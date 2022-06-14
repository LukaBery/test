package com.myspring.Onaju.admin.adminHost.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.time.DateFormatUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
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
	
	
	/*
	 * @Override
	 * 
	 * @RequestMapping(value="/admin/hostList.do" ,method = {RequestMethod.GET,
	 * RequestMethod.POST}) public ModelAndView hostList(@RequestParam Map<String,
	 * Object> searchMap, Criteria cri) {
	 * 
	 * ModelAndView mav = new ModelAndView();
	 * 
	 * PageMaker pageMaker = new PageMaker(); pageMaker.setCri(cri);
	 * pageMaker.setTotalCount(adminHostService.hostListTotal());
	 * 
	 * List<Map<String, Object>> hostList = adminHostService.listAllHost(cri);
	 * 
	 * mav.addObject("hostList", hostList); mav.addObject("pageMaker", pageMaker);
	 * return mav; }
	 */
	
	@Override
	@RequestMapping(value="/admin/hostDetail.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostDetail(@RequestParam("h_id")String h_id, @ModelAttribute Criteria cri)
			throws Exception {

		adminHostVO = adminHostService.hostDetail(h_id);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hostVO", adminHostVO);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		mav.addObject("page", cri.getPage());
		mav.addObject("pageMaker", pageMaker);
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
	@RequestMapping(value="/admin/hostModify.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostModifyForm(String h_id, @ModelAttribute Criteria cri)
			throws Exception {
		
		ModelAndView mav = new ModelAndView();
		adminHostVO = adminHostService.hostDetail(h_id);
				
		mav.addObject("hostVO",adminHostVO);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		mav.addObject("page", cri.getPage());
		mav.addObject("pageMaker", pageMaker);

		return mav;
	}
	
	
	
	@Override
	@RequestMapping(value="/admin/hostInfoList.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostInfoList(Criteria cri) {
		
		ModelAndView mav = new ModelAndView();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminHostService.hostInfoListTotal());
		
		List<Map<String, Object>> hostInfoList = adminHostService.listAllHostInfo(cri);
		
		mav.addObject("hostInfoList", hostInfoList);
		mav.addObject("pageMaker", pageMaker);
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
	public ResponseEntity<Map<String, Object>> updateHost(AdminHostVO hostVO, Criteria cri) {
		
		int update_host = adminHostService.updateHost(hostVO);
		
		Map<String, Object> criMap = new HashMap<String, Object>();
		
		criMap.put("success", "success");
		criMap.put("page", cri.getPage());
		criMap.put("perPageNum", cri.getPerPageNum());
		
		return update_host == 1 ? new ResponseEntity<Map<String, Object>>(criMap, HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@Override
	@RequestMapping(value = "/admin/deleteHost.do", method = {RequestMethod.GET, RequestMethod.POST})
	public void deleteHost(String h_id) {
		adminHostService.deleteHost(h_id);
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
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminHostService.hostListTotal(searchMap));
		
		searchMap.put("pageStart", cri.getPageStart());
		searchMap.put("perPageNum", cri.getPerPageNum());
		List<Map<String, Object>> searchHostList = adminHostService.searchHost(searchMap);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/hostList");
		mav.addObject("hostList", searchHostList);
		mav.addObject("pageMaker", pageMaker);
		mav.addObject("searchMap", searchMap);
	
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/hostList.do" , method = RequestMethod.GET)
	public ModelAndView hostList(Map<String, String> dateMap) throws Exception {

		String section = dateMap.get("section");
		String pageNum = dateMap.get("pageNum");
		String join_startDate = dateMap.get("join_startDate");
		String join_endDate = dateMap.get("join_endDate");
		String del_yn = dateMap.get("del_yn");
		String h_id = dateMap.get("h_id");
		String h_sellerNum = dateMap.get("h_sellerNum");
		String h_name = dateMap.get("h_name");

		ModelAndView mav = new ModelAndView();

		HashMap<String, Object> condMap = new HashMap<String, Object>();
		if (section == null) {
			section = "1";
		}
		condMap.put("section", section);
		if (pageNum == null) {
			pageNum = "1";
		}
		condMap.put("pageNum", pageNum);
		condMap.put("join_startDate", join_startDate);
		condMap.put("join_endDate", join_endDate);
		condMap.put("del_yn", del_yn);
		condMap.put("h_id", h_id);
		condMap.put("h_sellerNum", h_sellerNum);
		condMap.put("h_name", h_name);

		List<Map<String, Object>> seachHostList = adminHostService.listAllHost(condMap);

		mav.addObject("seachHostList", seachHostList);
		mav.addObject("section", section);
		mav.addObject("pageNum", pageNum);
		mav.addObject("join_startDate", join_startDate);
		mav.addObject("join_endDate", join_endDate);
		mav.addObject("del_yn", del_yn);
		mav.addObject("h_id", h_id);
		mav.addObject("h_sellerNum", h_sellerNum);
		mav.addObject("h_name", h_name);

		return mav;
	}

}
