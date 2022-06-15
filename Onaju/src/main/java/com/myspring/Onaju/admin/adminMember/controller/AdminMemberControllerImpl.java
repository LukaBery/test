package com.myspring.Onaju.admin.adminMember.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminCommon.paging.vo.PageMaker;
import com.myspring.Onaju.admin.adminMember.service.AdminMemberService;
import com.myspring.Onaju.member.vo.MemberVO;

@Controller("adminMemberController")
public class AdminMemberControllerImpl implements AdminMemberController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	@Autowired
	private MemberVO memberVO;
	
	@Override
	@RequestMapping(value="/admin/memberList.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listMembers(Criteria cri) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminMemberService.memberListTotal());
		
		List<Map<String, Object>> membersList = adminMemberService.listMembers(cri);
		
		mav.addObject("membersList", membersList);
		mav.addObject("pageMaker", pageMaker);
		return mav;
	}

	@Override
	@RequestMapping(value="/admin/memberDetail.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberDetail(String u_id, Criteria cri) throws Exception {
		memberVO = adminMemberService.memberDetail(u_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberVO",memberVO);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		mav.addObject("page", cri.getPage());
		mav.addObject("pageMaker", pageMaker);
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
	@RequestMapping(value = "/admin/searchMember.do", method = RequestMethod.GET)
	public ModelAndView searchMember(@RequestParam Map<String, Object> searchMap, Criteria cri) throws Exception {

		if(searchMap.get("write_endDate") != null && searchMap.get("write_endDate") != "") {
			String endDate = (String)searchMap.get("write_endDate");
		
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date = format.parse(endDate);
			Date plus_endDate = new Date(date.getTime() + (1000*60*60*24));
			String write_endDate = DateFormatUtils.format(plus_endDate, "yyyy-MM-dd");
	
			searchMap.put("write_endDate", write_endDate);
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminMemberService.memberListTotal(searchMap));
		
		searchMap.put("pageStart", cri.getPageStart());
		searchMap.put("perPageNum", cri.getPerPageNum());
		
		List<Map<String, Object>> searchMemberList =  adminMemberService.searchMember(searchMap);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/memberList");
		mav.addObject("membersList", searchMemberList);
		mav.addObject("pageMaker", pageMaker);
		return mav;	
	}

	@Override
	public ResponseEntity<Map<String, Object>> memberDelete(String u_id, Criteria cri) {
		int delete_Member = adminMemberService.memberDelete(u_id); 
		return null;
	}
}
