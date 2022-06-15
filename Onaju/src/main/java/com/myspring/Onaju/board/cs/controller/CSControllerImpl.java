package com.myspring.Onaju.board.cs.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminBoard.service.AdminBoardService;
import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminCommon.paging.vo.PageMaker;
import com.myspring.Onaju.common.base.BaseController;

@Controller("csController")
@RequestMapping(value = "/cs")
public class CSControllerImpl extends BaseController implements CSController{
	@Autowired
	AdminBoardService adminBoardService;
	
	
	@Override
	@RequestMapping(value = "/qnaList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView qnaList(Criteria cri) throws Exception {
ModelAndView mav = new ModelAndView();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminBoardService.enquireListTotal());
		
		List<Map<String, Object>> enquireList = adminBoardService.enquireBoardList(cri);
		mav.addObject("enquireList", enquireList);
		mav.addObject("pageMaker", pageMaker);	
		mav.setViewName("/customerService/qnaList");

		return mav;
	}
	
	@Override
	@RequestMapping(value = "/noticeBoard.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView noticeBoard(Criteria cri) throws Exception {
ModelAndView mav = new ModelAndView();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminBoardService.noticeListTotal());
		
		List<Map<String, Object>> noticeList = adminBoardService.noticeList(cri);
		mav.addObject("noticeList", noticeList);
		mav.addObject("pageMaker", pageMaker);
		mav.setViewName("/customerService/noticeBoard");

		return mav; 
	}
	

}
