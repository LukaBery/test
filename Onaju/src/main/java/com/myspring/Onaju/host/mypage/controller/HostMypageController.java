package com.myspring.Onaju.host.mypage.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.host.vo.HostVO;

public interface HostMypageController {
	
	public ResponseEntity modifyHostMyInfo(@RequestParam("h_id") String h_id, 
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView uploadHostProfile( MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception;
	
	public  ModelAndView deleteMember(@RequestParam Map<String, String> loginMap,
            HttpServletRequest request, HttpServletResponse response)  throws Exception;
}
