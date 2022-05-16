package com.myspring.Onaju.cart.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.cart.vo.CartVO;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO{
	@Autowired
	private SqlSession sqlSession;	
	

	@Override
	public List<CartVO> selectMyCartGoodsList(String u_id) throws DataAccessException {
		List<CartVO> orderGoodsList = (List) sqlSession.selectList("mapper.cart.selectMyCartGoodsList", u_id);
		return orderGoodsList;
	}

	@Override
	public void insertNewCart(CartVO cartVO) throws DataAccessException{
		sqlSession.insert("mapper.cart.insertNewCart",cartVO);
	}
	@Override
	public void deleteCartGoods(int cart_id) throws DataAccessException{
		sqlSession.delete("mapper.cart.deleteCartGoods",cart_id);
	}

}
