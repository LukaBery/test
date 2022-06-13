package com.myspring.Onaju.admin.adminOrder.controller;

import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;

public interface AdminOrderController {
	public ModelAndView ordersList(Criteria cri);
	public ModelAndView orderDetail(String order_code);
	public int orderCancel(String order_code);
}
