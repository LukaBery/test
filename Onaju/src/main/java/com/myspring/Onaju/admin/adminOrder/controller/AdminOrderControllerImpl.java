package com.myspring.Onaju.admin.adminOrder.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminCommon.paging.vo.PageMaker;
import com.myspring.Onaju.admin.adminOrder.service.AdminOrderService;
import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

@Controller("adminOrderController")
public class AdminOrderControllerImpl implements AdminOrderController {

	@Autowired
	AdminOrderService adminOrderService;
	
	@Override
	@RequestMapping(value = "/admin/orderList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView ordersList(Criteria cri) {
		
		ModelAndView mav = new ModelAndView();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminOrderService.orderListTotal());
		
		List<Map<String, Object>> ordersList = adminOrderService.ordersList(cri);
		
		mav.addObject("ordersList", ordersList);
		mav.addObject("pageMaker", pageMaker);
		return mav;
	}
	@Override
	@RequestMapping(value = "/admin/orderDetail.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView orderDetail(String order_code) {
		ModelAndView mav = new ModelAndView();
		AdminOrderVO orderVO = adminOrderService.orderDetail(order_code);
		mav.addObject("orderVO", orderVO );
		return mav;
	}
	@Override
	@ResponseBody
	@RequestMapping(value = "/admin/orderCancel.do", method = RequestMethod.POST )
	public int orderCancel(String order_code) {

		int data = adminOrderService.orderCancel(order_code);
		return data;
	}
	
	
}
