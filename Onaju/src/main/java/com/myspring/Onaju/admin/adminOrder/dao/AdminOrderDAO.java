package com.myspring.Onaju.admin.adminOrder.dao;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

public interface AdminOrderDAO {
	public List<Map<String, Object>> selectAllOrderList(Criteria cri);
	public int selectOrderListTotal();
	public int selectOrderListTotal(Map<String, Object> searchMap);
	public AdminOrderVO selectOrderDetail(String order_code);
	public int selectOrderCancel(String order_code);

}
