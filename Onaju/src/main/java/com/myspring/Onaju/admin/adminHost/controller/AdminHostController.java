package com.myspring.Onaju.admin.adminHost.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;

public interface AdminHostController {
	public ModelAndView hostList(AdminHostVO vo) throws Exception;
	public ModelAndView hostDetail(@RequestParam("h_id") String h_id) throws Exception;
	public ModelAndView hostCalculate(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView hostModifyForm(@RequestParam("h_id") String u_id) throws Exception;
	public ModelAndView hostInfoList(AdminHostInfoVO vo) throws Exception;
	public ModelAndView hostInfoDetail(String h_code) throws Exception;
	public ModelAndView hostInfoModifyForm(String h_code) throws Exception;
}
