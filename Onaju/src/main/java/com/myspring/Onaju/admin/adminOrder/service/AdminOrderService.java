package com.myspring.Onaju.admin.adminOrder.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

public interface AdminOrderService {
	public List<Map<String, Object>> ordersList(Criteria cri);
	public int orderListTotal();
	public int orderListTotal(Map<String, Object> searchMap);
	public AdminOrderVO orderDetail(String order_code);
	public int orderCancel(String order_code);
}
