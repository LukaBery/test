package com.myspring.Onaju.board.review.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.board.review.vo.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO{
	@Autowired
	private SqlSession sqlSession;	

	@Override
	public void insertNewReview(ReviewVO reviewVO) throws DataAccessException{
		sqlSession.insert("mapper.review.insertNewReview",reviewVO);
	}
	@Override
	public void updateReviewState(int order_code) throws DataAccessException{
		sqlSession.update("mapper.review.updateReviewState",order_code);
	}
	
	@Override
	public List<ReviewVO> selectReviewListById(String u_id) throws DataAccessException{
		List<ReviewVO> MyReviewList = sqlSession.selectList("mapper.review.selectReviewListById",u_id);
		return MyReviewList;
	}

}
