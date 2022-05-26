package com.myspring.Onaju.board.review.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.board.review.vo.ReviewVO;

public interface ReviewController {
	public ModelAndView addNewReview(@ModelAttribute("memberVO") ReviewVO reviewVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception; 
	public ModelAndView myReviewList(HttpServletRequest request,
			HttpServletResponse response) throws Exception;

}