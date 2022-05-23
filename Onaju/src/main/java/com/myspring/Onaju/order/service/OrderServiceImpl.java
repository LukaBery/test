package com.myspring.Onaju.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.Onaju.order.dao.OrderDAO;
import com.myspring.Onaju.order.vo.OrderVO;



@Service("orderService")
@Transactional(propagation=Propagation.REQUIRED)
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderDAO orderDAO;

	public void addNewOrder(OrderVO myOrderList) throws Exception{
		orderDAO.insertNewOrder(myOrderList);
		//īƮ���� �ֹ� ��ǰ �����Ѵ�.
	
	}	
	

}
