package com.myspring.Onaju.admin.adminOrder.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

public interface AdminOrderService {
	public List<AdminOrderVO> ordersList();
	public AdminOrderVO orderDetail(String order_code);
	public int orderCancel(String order_code);
}
