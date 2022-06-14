package com.myspring.Onaju.admin.adminHost.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;

public interface AdminHostController {
	/*
	 * public ModelAndView hostList(@RequestParam Map<String, Object>
	 * searchMap,@ModelAttribute Criteria cri);
	 */
	public ModelAndView hostDetail(@RequestParam("h_id")String h_id, @ModelAttribute Criteria cri) throws Exception;
	public ModelAndView hostCalculate(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView hostModifyForm(String u_id, @ModelAttribute Criteria cri) throws Exception;
	public ModelAndView hostInfoList(Criteria cri);
	public ModelAndView hostInfoDetail(String h_code) throws Exception;
	public ModelAndView hostInfoModifyForm(String h_code) throws Exception;
	public ResponseEntity<Map<String, Object>> updateHost(AdminHostVO hostVO, Criteria cri);
	public void deleteHost(String h_id);
	public ModelAndView hostSearch(@RequestParam Map<String, Object> searchMap, Criteria cri) throws Exception;
	public ModelAndView hostList(@RequestParam Map<String, String> dateMap) throws Exception;
}
