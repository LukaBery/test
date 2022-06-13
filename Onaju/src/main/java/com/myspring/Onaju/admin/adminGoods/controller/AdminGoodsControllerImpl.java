package com.myspring.Onaju.admin.adminGoods.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminCommon.paging.vo.PageMaker;
import com.myspring.Onaju.admin.adminGoods.service.AdminGoodsService;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

@Controller("adminGoodsController")
public class AdminGoodsControllerImpl implements AdminGoodsController {
	
	@Autowired
	private AdminGoodsService adminGoodsService;
	@Autowired
	private AdminHostRoomVO adminHostRoomVO;
	
	@Override
	@RequestMapping(value = "/admin/goodsList.do", method = { RequestMethod.GET, RequestMethod.POST})
	public ModelAndView roomsList(Criteria cri) {
		
		ModelAndView mav = new ModelAndView();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminGoodsService.adminRoomTotal());
		
		
		List<Map<String, Object>> roomsList = adminGoodsService.roomsList(cri);
		mav.addObject("roomsList", roomsList);
		mav.addObject("pageMaker", pageMaker);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/goodsDetail.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView roomDetail(String room_code) throws Exception {
		adminHostRoomVO = adminGoodsService.roomDetail(room_code);
		ModelAndView mav = new ModelAndView();
		mav.addObject("roomVO", adminHostRoomVO);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/goodsModify.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView roomModify(String room_code) throws Exception {
		adminHostRoomVO = adminGoodsService.roomDetail(room_code);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("roomVO", adminHostRoomVO);
		return mav;
	}
}
