package com.myspring.Onaju.main;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.common.base.BaseController;

@Controller("mainController")
@EnableAspectJAutoProxy
public class MainController extends BaseController {

	@RequestMapping(value = "/main/main.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session;
		ModelAndView mav = new ModelAndView();
		String viewName = (String) request.getAttribute("viewName");
		String isLogOn = request.getParameter("isLogOn");
		System.out.println("isLogon은" + isLogOn);
		mav.addObject("isLogOn", isLogOn);
		mav.setViewName(viewName);

		return mav;
	}

	@RequestMapping(value = "/board/boardArticle.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView boardArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session;
		ModelAndView mav = new ModelAndView();
		String viewName = (String) request.getAttribute("viewName");
		String isLogOn = request.getParameter("isLogOn");
		System.out.println("isLogon" + isLogOn);
		mav.addObject("isLogOn", isLogOn);
		mav.setViewName(viewName);

		return mav;
	}

	@RequestMapping(value = "/customerService/siteMap.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView siteMap(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session;
		ModelAndView mav = new ModelAndView();
		String viewName = (String) request.getAttribute("viewName");
		String isLogOn = request.getParameter("isLogOn");
		System.out.println("isLogon" + isLogOn);
		mav.addObject("isLogOn", isLogOn);
		mav.setViewName(viewName);

		return mav;
	}
}
