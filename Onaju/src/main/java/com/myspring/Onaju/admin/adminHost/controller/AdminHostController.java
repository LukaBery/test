package com.myspring.Onaju.admin.adminHost.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;

public interface AdminHostController {
	
	public ModelAndView hostList(Criteria cri) throws Exception;
	public ModelAndView hostDetail(@RequestParam("h_id")String h_id, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ModelAndView hostCalculate(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView hostModifyForm(@RequestParam("h_id") String h_id, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ModelAndView hostInfoList(Criteria cri);
	public ModelAndView hostInfoDetail(String h_code) throws Exception;
	public ModelAndView hostInfoModifyForm(String h_code) throws Exception;
	public String updateHost(@RequestParam("h_id") String h_id, AdminHostVO hostVO, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr);
	public String deleteHost(@RequestParam("h_id") String h_id, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr);
	public ModelAndView hostSearch(@RequestParam Map<String, Object> searchMap, Criteria cri) throws Exception;
}
