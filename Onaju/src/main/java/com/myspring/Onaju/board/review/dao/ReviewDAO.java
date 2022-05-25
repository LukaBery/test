package com.myspring.Onaju.board.review.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.board.review.vo.ReviewVO;

public interface ReviewDAO {
	public void insertNewReview(ReviewVO reviewVO) throws DataAccessException;
	public void updateReviewState(int order_code) throws DataAccessException;
	public List<ReviewVO> selectReviewListById(String u_id) throws DataAccessException;
}
