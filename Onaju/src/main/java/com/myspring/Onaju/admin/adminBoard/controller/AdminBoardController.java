package com.myspring.Onaju.admin.adminBoard.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireReplyVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;
import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;

public interface AdminBoardController {
	public ModelAndView adminNoticeList(Criteria cri) throws Exception;
	public ModelAndView adminNoticeDetail(String notice_code) throws Exception;
	public void imgFile(String a_id, String notice_code, HttpServletResponse response) throws Exception;
	public ModelAndView adminNoticeForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView insertNotice(AdminNoticeVO noticeVO, MultipartFile file, HttpServletRequest request) throws Exception;
	public ModelAndView adminSearchNoticeList(AdminNoticeVO searchVO) throws Exception;
	public ModelAndView enquireBoardList(AdminEnquireVO enquireVO) throws Exception;
	public ModelAndView enquireBoardDetail(AdminEnquireVO enquireVO) throws Exception;
	public ResponseEntity<String> insertEnquireReply(@ModelAttribute("replyVO") AdminEnquireReplyVO replyVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
