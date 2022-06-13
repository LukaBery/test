package com.myspring.Onaju.admin.adminOrder.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminOrder.dao.AdminOrderDAO;
import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

@Service("adminOrderService")
public class AdminOrderServiceImpl implements AdminOrderService {

	@Autowired
	private AdminOrderDAO adminOrderDAO;
	
	@Override
	public List<Map<String, Object>> ordersList(Criteria cri) {
		return adminOrderDAO.selectAllOrderList(cri);
	}

	@Override
	public AdminOrderVO orderDetail(String order_code) {
		return adminOrderDAO.selectOrderDetail(order_code);
	}

	@Override
	public int orderCancel(String order_code) {
		return adminOrderDAO.selectOrderCancel(order_code);
	}

	@Override
	public int orderListTotal() {
		return adminOrderDAO.selectOrderListTotal();
	}

}
