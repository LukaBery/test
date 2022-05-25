package com.myspring.Onaju.board.review.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.board.review.vo.ReviewVO;

public interface ReviewDAO {
	public void insertNewReview(ReviewVO reviewVO) throws DataAccessException;
	public void updateReviewState(int order_code) throws DataAccessException;
	public List<ReviewVO> selectReviewListById(String u_id) throws DataAccessException;
	public List<ReviewVO> selectReviewListByRoom(String room_code) throws DataAccessException;

	public void modReview(ReviewVO reviewVO) throws DataAccessException;
	public void removeReview(String review_num) throws DataAccessException;
	public void deleteReviewState(int order_code) throws DataAccessException;

}
