package com.myspring.Onaju.admin.adminGoods.controller;

import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

public interface AdminGoodsController {
	public ModelAndView roomsList(AdminHostRoomVO roomVO) throws Exception;
	public ModelAndView roomDetail(String room_code) throws Exception;
	public ModelAndView roomModify(String room_code) throws Exception;
}
