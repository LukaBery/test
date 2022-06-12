package com.myspring.Onaju.admin.adminMember.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.member.vo.MemberVO;

public interface AdminMemberController {
	public ModelAndView listMembers(Criteria cri) throws Exception;
	public ModelAndView memberDetail(String u_id,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView memberModifyForm(String u_id,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView memberUpdate(@ModelAttribute MemberVO vo) throws Exception;
	public ModelAndView searchMember(@RequestParam Map<String, Object> searchMap, Criteria cri) throws Exception;
}
