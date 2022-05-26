package com.myspring.Onaju.board.review.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.board.review.service.ReviewService;
import com.myspring.Onaju.board.review.vo.ReviewVO;
import com.myspring.Onaju.common.aes256.SHA256Util;
import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.member.vo.MemberVO;

@Controller("reviewController")
@RequestMapping(value = "/board")
public class ReviewControllerImpl extends BaseController implements ReviewController{

	private static final String String = null;
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
	public ModelAndView myReviewList(@RequestParam Map<String, String> _pageNum, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		session = request.getSession();
		String pageNum = _pageNum.get("pageNum");
		if(pageNum== null) {
			pageNum = "1";
		}
		HashMap<String,Object> condMap=new HashMap<String,Object>();
		condMap.put("pageNum", pageNum);
		
	
		
		

		MemberVO mem = (MemberVO)session.getAttribute("memberInfo");
		String u_id = mem.getU_id();
		condMap.put("u_id", u_id);
		List<ReviewVO> myReviewList = reviewService.selectReviewById(condMap);
		ModelAndView mav = new ModelAndView();
		mav.addObject("myReviewList", myReviewList);
		mav.addObject("pageNum", pageNum);

		mav.setViewName("/mypage/Mypage5");
		return mav;
	}
	
	

	@Override
	@RequestMapping(value = "/review/modReview.do", method = RequestMethod.POST)
	public ResponseEntity modReview(@ModelAttribute("reviewVO") ReviewVO reviewVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		String referer = (String)request.getHeader("REFERER");
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			reviewService.modReview(reviewVO);
			message = "<script>";
			message += " alert('수정했습니다.');";
			message += " location.href='"   + referer +"';";
		
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('에러가 발생했습니다.');";
			message += " location.href='" + request.getContextPath() + referer;
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	@Override
	@RequestMapping(value = "/review/delReview.do", method = RequestMethod.POST)
	public ResponseEntity delReview(@ModelAttribute("reviewVO") ReviewVO reviewVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		String referer = (String)request.getHeader("REFERER");
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			reviewService.delReview(reviewVO);
			message = "<script>";
			message += " alert('삭제했습니다.');";
			message += " location.href='"   + referer +"';";
		
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('에러가 발생했습니다.');";
			message += " location.href='" + request.getContextPath() + referer;
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
}
