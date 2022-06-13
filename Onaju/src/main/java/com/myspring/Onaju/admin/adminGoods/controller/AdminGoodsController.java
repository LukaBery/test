package com.myspring.Onaju.admin.adminGoods.controller;

import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;

public interface AdminGoodsController {
	public ModelAndView roomsList(Criteria cri);
	public ModelAndView roomDetail(String room_code) throws Exception;
	public ModelAndView roomModify(String room_code) throws Exception;
}
