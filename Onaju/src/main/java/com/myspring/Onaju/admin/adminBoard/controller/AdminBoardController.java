package com.myspring.Onaju.admin.adminBoard.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;

public interface AdminBoardController {
	public ModelAndView adminNoticeList(AdminNoticeVO noticeVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView adminNoticeDetail(String notice_code) throws Exception;
	public void imgFile(String a_id, String notice_code, HttpServletResponse response) throws Exception;
	public ModelAndView adminNoticeForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView insertNotice(AdminNoticeVO noticeVO, MultipartFile file, HttpServletRequest request) throws Exception;
	public ModelAndView adminSearchNoticeList(AdminNoticeVO searchVO) throws Exception;
}
