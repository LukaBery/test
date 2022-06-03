package com.myspring.Onaju.admin.adminOrder.dao;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

public interface AdminOrderDAO {
	public List<AdminOrderVO> selectAllOrderList();
	public AdminOrderVO selectOrderDetail(String order_code);
	public int selectOrderCancel(String order_code);

}
