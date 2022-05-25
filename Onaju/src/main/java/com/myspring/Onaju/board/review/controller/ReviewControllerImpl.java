package com.myspring.Onaju.board.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.board.review.service.ReviewService;
import com.myspring.Onaju.board.review.vo.ReviewVO;
import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.member.vo.MemberVO;

@Controller("reviewController")
@RequestMapping(value = "/board")
public class ReviewControllerImpl extends BaseController implements ReviewController{

	@Autowired
	private ReviewVO reviewVO;
	@Autowired
	private ReviewService reviewService;
	
	
	 
	

	@Override
	@RequestMapping(value = "/review/addReview.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView addNewReview(@ModelAttribute("memberVO") ReviewVO _reviewVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		session = request.getSession();
		MemberVO mem = (MemberVO)session.getAttribute("memberInfo");
		String u_id = mem.getU_id();
		_reviewVO.setU_id(u_id);
		
		
		
		reviewService.addReview(_reviewVO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/mypage/mypageMain.do");
		return mav;
	}
	@Override
	@RequestMapping(value = "/review/myReviewList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView myReviewList(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		session = request.getSession();
		MemberVO mem = (MemberVO)session.getAttribute("memberInfo");
		String u_id = mem.getU_id();
		List<ReviewVO> myReviewList = reviewService.selectReviewById(u_id);
		
		
		
		
		
	
		ModelAndView mav = new ModelAndView();
		mav.addObject("myReviewList", myReviewList);
		mav.setViewName("/mypage/Mypage5");
		return mav;
	}
}
