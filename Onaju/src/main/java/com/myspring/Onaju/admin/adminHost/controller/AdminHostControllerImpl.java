package com.myspring.Onaju.admin.adminHost.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.time.DateFormatUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminCommon.paging.PageVO;
import com.myspring.Onaju.admin.adminCommon.paging.vo.PageMaker;
import com.myspring.Onaju.admin.adminHost.service.AdminHostService;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;
import com.myspring.Onaju.member.controller.MemberControllerImpl;

@RestController("adminHostController")
public class AdminHostControllerImpl implements AdminHostController {
	private static final Logger logger = LoggerFactory.getLogger(MemberControllerImpl.class);
	@Autowired
	private AdminHostService adminHostService;
	@Autowired
	private AdminHostVO adminHostVO ;
	@Autowired
	private AdminHostInfoVO adminHostInfoVO;
	
	
	@Override
	@RequestMapping(value="/admin/hostList.do" ,method = {RequestMethod.GET,RequestMethod.POST}) 
	public ModelAndView hostList(Criteria cri) throws Exception {
		
		if(cri.getJoin_endDate() != "" && cri.getJoin_endDate() != null) {
			String endDate = cri.getJoin_endDate();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date = format.parse(endDate);
			Date plus_date = new Date(date.getTime() + (1000*60*60*24));
			String join_endDate = DateFormatUtils.format(plus_date, "yyyy-MM-dd");
		
			cri.setJoin_endDate(join_endDate);
		}
		
		ModelAndView mav = new ModelAndView();
		List<Map<String, Object>> hostList = adminHostService.listAllHost(cri);
		
		int total = adminHostService.hostListTotal(cri);
		
		mav.addObject("hostList", hostList);
		mav.addObject("pageMaker", new PageVO(cri, total));
		return mav;
	  }
	 
	
	@Override
	@RequestMapping(value="/admin/hostDetail.do" ,method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView hostDetail(@RequestParam("h_id")String h_id, @ModelAttribute("cri") Criteria cri)
			throws Exception {

		adminHostVO = adminHostService.hostDetail(h_id);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hostVO", adminHostVO);
	
		return mav;
	}

	@Override
	@RequestMapping(value="/admin/hostModify.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostModifyForm(@RequestParam("h_id") String h_id, @ModelAttribute("cri") Criteria cri)
			throws Exception {
		adminHostVO = adminHostService.hostDetail(h_id);
		
		ModelAndView mav = new ModelAndView();		
		mav.addObject("hostVO",adminHostVO);
		
		return mav;
	}
	
	@RequestMapping(value = "/admin/hostCalculate.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostCalculate(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);		
		return mav;
	}
	
	@Override
	@RequestMapping(value="/admin/hostInfoList.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostInfoList(Criteria cri) {
		
		ModelAndView mav = new ModelAndView();
		
		int total = adminHostService.hostInfoListTotal(cri);
		
		List<Map<String, Object>> hostInfoList = adminHostService.listAllHostInfo(cri);
		
		mav.addObject("hostInfoList", hostInfoList);
		mav.addObject("pageMaker", new PageVO(cri, total));
		return mav;
	}
	
	@Override
	@RequestMapping(value="/admin/hostInfoDetail.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostInfoDetail(String h_code)
			throws Exception {
		
		adminHostInfoVO = adminHostService.hostInfoDetail(h_code);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminHostInfoVO", adminHostInfoVO);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/hostInfoModify.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostInfoModifyForm(String h_code) throws Exception {
		adminHostInfoVO = adminHostService.hostInfoDetail(h_code);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminHostInfoVO", adminHostInfoVO);

		return mav;
	}
	
	@Override
	@RequestMapping(value = "/admin/updateHost.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String updateHost(String h_id, AdminHostVO hostVO,
			@ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		
		int update_host = adminHostService.updateHost(hostVO);
		if(update_host == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/admin/hostDetail.do";
	}

	@Override
	@RequestMapping(value = "/admin/deleteHost.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteHost(@RequestParam("h_id") String h_id, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		int delete_host = adminHostService.deleteHost(h_id);
		
		if(delete_host == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/admin/hostList.do";
	}

	@Override
	@RequestMapping(value = "/admin/hostSearch.do", method = RequestMethod.GET)
	public ModelAndView hostSearch(@RequestParam Map<String, Object> searchMap, Criteria cri) throws Exception {
		if(searchMap.get("join_endDate") != null && searchMap.get("join_endDate") != "") {
			String endDate = (String)searchMap.get("join_endDate");
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date = format.parse(endDate);
			Date plus_endDate = new Date(date.getTime() + (1000*60*60*24));
			String join_endDate = DateFormatUtils.format(plus_endDate, "yyyy-MM-dd");
	
			searchMap.put("join_endDate", join_endDate);	
		}
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setTotalCount(adminHostService.hostListTotal(searchMap));
		
		
		List<Map<String, Object>> searchHostList = adminHostService.searchHost(searchMap);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/hostList");
		mav.addObject("hostList", searchHostList);
		mav.addObject("pageMaker", pageMaker);
		mav.addObject("searchMap", searchMap);
	
		return mav;
	}

}
