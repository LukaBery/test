package com.myspring.Onaju.admin.adminOrder.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

@Repository("adminOrderDAO")
public class AdminOrderDAOImpl implements AdminOrderDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AdminOrderVO> selectAllOrderList() {
		return sqlSession.selectList("mapper.admin.order.selectAllOrderList");
	}
	@Override
	public AdminOrderVO selectOrderDetail(String order_code) {
		return sqlSession.selectOne("mapper.admin.order.selectOrderDetail", order_code);
	}

	@Override
	public int selectOrderCancel(String order_code) {
		return sqlSession.update("mapper.admin.order.selectOrderCancel", order_code);	
	}

}
