package com.myspring.Onaju.main;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.host.community.service.HostCommunityService;
import com.myspring.Onaju.host.community.vo.HostCommunityVO;

@Controller("mainController")
@EnableAspectJAutoProxy
public class MainController extends BaseController {
	@Autowired
	private HostCommunityVO hostCommunityVO;
	@Autowired
	private HostCommunityService hostCommunityService;
	
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

	@RequestMapping(value = "board/boardArticle.do", method = {RequestMethod.GET, RequestMethod.POST })
	public ModelAndView boardArticle(@RequestParam("cmnNum") int cmnNum, @RequestParam("room_code") int room_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session;
		

		hostCommunityVO = hostCommunityService.modCommunity(cmnNum);
		System.out.println("커뮤니티 글 modCommunity :" + hostCommunityVO);
		mav.addObject("hostCommunityVO", hostCommunityVO);
		Map goodsMap = hostCommunityService.selectCommunityView(room_code);
		mav.addObject("goodsMap", goodsMap);

		
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
