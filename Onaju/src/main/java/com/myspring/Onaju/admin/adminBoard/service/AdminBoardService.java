package com.myspring.Onaju.admin.adminBoard.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireReplyVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;
import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;

public interface AdminBoardService {
	public List<Map<String,Object>> noticeList(Criteria cri) throws Exception;
	public  Map<String, Object> noticeDetail(String notice_code) throws Exception;
	public String getImgFile(Map<String, Object> imgInfoMap) throws Exception;
	public int noticeListTotal();
	public int noticeListTotal(Map<String, Object> searchMap);
	public int insertNotice(AdminNoticeVO noticeVO) throws Exception;
	public int insertImgFile(Map<String, Object> imgFile) throws Exception;
	public List<Map<String, Object>> searchNotice(Map<String, Object> searchMap);
	
	public List<Map<String, Object>> enquireBoardList(Criteria cri);
	public List<Map<String, Object>> enquireBoardDetail(AdminEnquireVO enquireVO);
	public void updateHit(AdminEnquireVO enquireVO);
	public int enquireListTotal();
	public int enquireListTotal(Map<String, Object> searchMap);
	
	public int insertEnquireReply(AdminEnquireReplyVO replyVO);
	public List<Map<String, Object>> enquireReplyDetail(AdminEnquireReplyVO replyVO);
	public int updateReplyCheck(AdminEnquireReplyVO replyVO);
}
