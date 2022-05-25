package com.myspring.Onaju.board.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.Onaju.board.review.dao.ReviewDAO;
import com.myspring.Onaju.board.review.vo.ReviewVO;

@Service("reviewService")
@Transactional(propagation=Propagation.REQUIRED)
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	ReviewDAO reviewDAO;
	
	
	
	
	
	
	
	
	@Override
	public void addReview(ReviewVO reviewVO) throws Exception{
		reviewDAO.insertNewReview(reviewVO);
		int order_code = reviewVO.getOrder_code();
		reviewDAO.updateReviewState(order_code);
	}

	@Override
	public List<ReviewVO> selectReviewById(String u_id) throws Exception{
	return reviewDAO.selectReviewListById(u_id);
	}
}
