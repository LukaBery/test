package com.myspring.Onaju.admin.adminOrder.controller;

import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

public interface AdminOrderController {
	public ModelAndView ordersList();
	public ModelAndView orderDetail(String order_code);
	public int orderCancel(String order_code);
}
