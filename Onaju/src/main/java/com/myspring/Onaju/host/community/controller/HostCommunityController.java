package com.myspring.Onaju.host.community.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.host.community.vo.HostCommunityVO;

public interface HostCommunityController {
	public ModelAndView cmnAticleForm1(HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ModelAndView cmnAticleForm2(@RequestParam("room_code") int room_code,
            HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ResponseEntity addNewCommunity(HostCommunityVO hostCommunityVO, MultipartHttpServletRequest request,
			HttpServletResponse response) throws Exception;
	public ModelAndView hostAllCommunityList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView modCmnAticleForm(int cmnNum, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView deleteHostCommunity(@RequestParam("cmnNum") int cmnNum, HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ModelAndView modCmnConfirm(int cmnNum, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	
}
