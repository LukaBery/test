package com.myspring.Onaju.admin.adminBoard.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireReplyVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;

public interface AdminBoardService {
	public List<AdminNoticeVO> noticeList(AdminNoticeVO noticeVO) throws Exception;
	public  Map<String, Object> noticeDetail(String notice_code) throws Exception;
	public String getImgFile(Map<String, Object> imgInfoMap) throws Exception;
	public int noticeListTotal(AdminNoticeVO noticeVO) throws Exception;
	public int insertNotice(AdminNoticeVO noticeVO) throws Exception;
	public int insertImgFile(Map<String, Object> imgFile) throws Exception;
	public List<AdminNoticeVO> searchNotice(AdminNoticeVO searchVO) throws Exception;
	public List<Map<String, Object>> enquireBoardList(AdminEnquireVO enquireVO);
	public List<Map<String, Object>> enquireBoardDetail(AdminEnquireVO enquireVO);
	public void updateHit(AdminEnquireVO enquireVO);
	public int insertEnquireReply(AdminEnquireReplyVO replyVO);
	public List<Map<String, Object>> enquireReplyDetail(AdminEnquireReplyVO replyVO);
	public int updateReplyCheck(AdminEnquireReplyVO replyVO);
}
