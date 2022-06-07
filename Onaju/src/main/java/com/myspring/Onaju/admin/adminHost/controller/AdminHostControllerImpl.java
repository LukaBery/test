package com.myspring.Onaju.admin.adminHost.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminHost.service.AdminHostService;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;
import com.myspring.Onaju.member.controller.MemberControllerImpl;

@Controller("adminHostController")
public class AdminHostControllerImpl implements AdminHostController {
	private static final Logger logger = LoggerFactory.getLogger(MemberControllerImpl.class);
	@Autowired
	private AdminHostService adminHostService;
	@Autowired
	private AdminHostVO adminHostVO ;
	@Autowired
	private HostInfoVO hostInfoVO;
	@Autowired
	private AdminHostInfoVO adminHostInfoVO;
	
	
	@Override
	@RequestMapping(value="/admin/hostList.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostList(AdminHostVO vo) throws Exception {
		
		int total = adminHostService.hostListTotal(vo);
		//(double)12/10 -> ceil 1.2 -> Integer(2.0) ->2
		int totalPage = (int) Math.ceil((double)total/10);
		int viewPage = vo.getViewPage();
		int startNO = (viewPage - 1) * 10 + 1;
		int endNO = startNO + (10 - 1);	
		vo.setStartNO(startNO);
		vo.setEndNO(endNO);	
		
		List<AdminHostVO> hostList = adminHostService.listAllHost(vo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("total", total);
		mav.addObject("totalPage", totalPage);
		mav.addObject("hostList", hostList);
		return mav;
	}
	
	@Override
	@RequestMapping(value="/admin/hostDetail.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostDetail(String h_id)
			throws Exception {

		adminHostVO = adminHostService.hostDetail(h_id);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hostVO", adminHostVO);
		mav.addObject("hostInfoVO", hostInfoVO);
		return mav;
	}
	
	@RequestMapping(value = "/admin/hostCalculate.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostCalculate(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);		
		return mav;
	}

	@Override
	@RequestMapping(value="/admin/hostModify.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostModifyForm(String h_id)
			throws Exception {
		
		adminHostVO = adminHostService.hostDetail(h_id);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("hostVO",adminHostVO);

		return mav;
	}
	
	
	@Override
	@RequestMapping(value="/admin/hostInfoList.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostInfoList(AdminHostInfoVO infoVO) throws Exception {
		
		int total = adminHostService.hostInfoListTotal(infoVO);
		//(double)12/10 -> ceil 1.2 -> Integer(2.0) ->2
		int totalPage = (int) Math.ceil((double)total/10);
		int viewPage = infoVO.getViewPage();
		int startNO = (viewPage - 1) * 10 + 1;
		int endNO = startNO + (10 - 1);	
		infoVO.setStartNO(startNO);
		infoVO.setEndNO(endNO);	
		
		List<AdminHostInfoVO> hostInfoList = adminHostService.listAllHostInfo(infoVO);
		ModelAndView mav = new ModelAndView();
		mav.addObject("total", total);
		mav.addObject("totalPage", totalPage);
		mav.addObject("hostInfoList", hostInfoList);
		return mav;
	}
	
	@Override
	@RequestMapping(value="/admin/hostInfoDetail.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostInfoDetail(String h_code)
			throws Exception {
		
		adminHostInfoVO = adminHostService.hostInfoDetail(h_code);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminHostInfoVO", adminHostInfoVO);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/hostInfoModify.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostInfoModifyForm(String h_code) throws Exception {
		adminHostInfoVO = adminHostService.hostInfoDetail(h_code);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminHostInfoVO", adminHostInfoVO);

		return mav;
	}
}
