package com.myspring.Onaju.board.review.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

public interface ReviewController {
	public ModelAndView addNewReview(@RequestParam Map<String, String> reviewMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception; 

}
