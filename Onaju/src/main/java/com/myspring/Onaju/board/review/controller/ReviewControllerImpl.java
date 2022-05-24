package com.myspring.Onaju.board.review.controller;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.board.review.dao.ReviewDAO;
import com.myspring.Onaju.board.review.service.ReviewService;
import com.myspring.Onaju.board.review.vo.ReviewVO;
import com.myspring.Onaju.common.base.BaseController;

@Controller("reviewController")
@RequestMapping(value = "/board")
public class ReviewControllerImpl extends BaseController implements ReviewController{

	@Autowired
	private ReviewVO reviewVO;
	
	 
	

	@Override
	@RequestMapping(value = "/review/addReview.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView addNewReview(@RequestParam Map<String, String> reviewMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		
		ModelAndView mav = new ModelAndView();
		mav.setView(null);
		return mav;
	}
}
