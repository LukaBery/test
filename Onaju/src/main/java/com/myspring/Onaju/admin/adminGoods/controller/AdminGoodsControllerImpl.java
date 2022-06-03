package com.myspring.Onaju.admin.adminGoods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView roomsList(AdminHostRoomVO roomVO) throws Exception {
		
		int total = adminGoodsService.adminRoomTotal(roomVO);
		int totalPage = (int) Math.ceil((double)total/10);
		
		int viewPage = roomVO.getViewPage();
		int startNO = (viewPage - 1) * 10 + 1;
		int endNO = startNO + (10 - 1);
		
		roomVO.setStartNO(startNO);
		roomVO.setEndNO(endNO);
		
		ModelAndView mav = new ModelAndView();
		
		List<AdminHostRoomVO> roomsList = adminGoodsService.roomsList(roomVO);
		mav.addObject("total", total);
		mav.addObject("totalPage", totalPage);
		mav.addObject("roomsList", roomsList);
		
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
