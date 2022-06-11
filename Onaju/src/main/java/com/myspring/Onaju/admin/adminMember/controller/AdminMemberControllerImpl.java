package com.myspring.Onaju.admin.adminMember.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.time.DateFormatUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.myspring.Onaju.admin.adminMember.service.AdminMemberService;
import com.myspring.Onaju.member.vo.MemberVO;

@Controller("adminMemberController")
public class AdminMemberControllerImpl implements AdminMemberController {
	private final Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private AdminMemberService adminMemberService;
	@Autowired
	private MemberVO memberVO;
	
	@Override
	@RequestMapping(value="/admin/memberList.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listMembers(MemberVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		//String viewName = getViewName(request);
		String viewName = (String)request.getAttribute("viewName");
		int total = adminMemberService.memberListTotal(vo);
		//(double)12/10 -> ceil 1.2 -> Integer(2.0) ->2
		int totalPage = (int) Math.ceil((double)total/10);
		
		int viewPage = vo.getViewPage();
		int startNO = (viewPage - 1) * 10 + 1;
		int endNO = startNO + (10 - 1);
		
		vo.setStartNO(startNO);
		vo.setEndNO(endNO);
		
		
		List<MemberVO> membersList = adminMemberService.listMembers(vo);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("total", total);
		mav.addObject("totalPage", totalPage);
		mav.addObject("membersList", membersList);
		return mav;
	}

	@Override
	@RequestMapping(value="/admin/memberDetail.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberDetail(String u_id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		memberVO = adminMemberService.memberDetail(u_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberVO",memberVO);
		return mav;
	}

	@Override
	@RequestMapping(value="/admin/memberModify.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberModifyForm(String u_id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		memberVO = adminMemberService.memberDetail(u_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberVO",memberVO);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/memberUpdate.do", method = RequestMethod.POST)
	public ModelAndView memberUpdate(MemberVO vo) throws Exception {
		int result = adminMemberService.memberUpdate(vo);
		ModelAndView mav = new ModelAndView();
		if(result == 1) {
			memberVO = adminMemberService.memberDetail(vo.getU_id());
			String u_id = memberVO.getU_id();
			mav.addObject("memberVO", memberVO);
			mav.setView(new RedirectView("/admin/memberDetail.do?u_id="+u_id, true));
		}else {
			System.out.println("변경실패");
		}
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/searchMember.do", method = RequestMethod.POST)
	public ModelAndView searchMember(MemberVO searchVO) throws Exception {
		
		if(searchVO.getWrite_endDate() != null && searchVO.getWrite_endDate() != "") {
			String endDate = searchVO.getWrite_endDate();
		
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date = format.parse(endDate);
			Date plus_endDate = new Date(date.getTime() + (1000*60*60*24));
			String write_endDate = DateFormatUtils.format(plus_endDate, "yyyy-MM-dd");
	
			searchVO.setWrite_endDate(write_endDate);
		}
		
		int total = adminMemberService.memberListTotal(searchVO);
		int totalPage = (int) Math.ceil((double)total/10);
		
		int viewPage = searchVO.getViewPage();
		int startNO = (viewPage - 1) * 10 + 1;
		int endNO = startNO + (10 - 1);
		
		searchVO.setStartNO(startNO);
		searchVO.setEndNO(endNO);
		
		List<MemberVO> searchMemberList =  adminMemberService.searchMember(searchVO);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/memberList");
		mav.addObject("membersList", searchMemberList);
		mav.addObject("total", total);
		mav.addObject("totalPage", totalPage);
		return mav; 
		
	}
}
