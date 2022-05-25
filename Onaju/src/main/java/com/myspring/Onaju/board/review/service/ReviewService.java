package com.myspring.Onaju.board.review.service;

import java.util.List;

import com.myspring.Onaju.board.review.vo.ReviewVO;

public interface ReviewService {
	public void addReview(ReviewVO reviewVO) throws Exception;
	public List<ReviewVO> selectReviewById(String u_id) throws Exception;
	public void modReview(ReviewVO reviewVO) throws Exception;
	public List<ReviewVO> selectReviewByRoom(String room_code) throws Exception;

	public void delReview(ReviewVO reviewVO) throws Exception;
}
