package com.myspring.Onaju.admin.adminBoard.dao;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireReplyVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;

public interface AdminBoardDAO {
	public List<AdminNoticeVO> selectAllNoticeList(AdminNoticeVO noticeVO);
	public Map<String, Object> selectNoticeDetail(String notice_code);
	public String selectImgFile(Map<String, Object> imgInfoMap);
	public int selectAllNoticeListTotal(AdminNoticeVO noticeVO);
	public int insertNotice(AdminNoticeVO noticeVO);
	public int insertImgFile(Map<String, Object> imgFile);
	public List<AdminNoticeVO> selectSearchNotice(AdminNoticeVO searchVO);
	public List<Map<String, Object>> selectAllEnquireList(AdminEnquireVO equireVO);
	public List<Map<String, Object>> selectEnquireDetail(AdminEnquireVO enquireVO);
	public void updateHit(AdminEnquireVO enquireVO);
	public int insertEnquireReply(AdminEnquireReplyVO replyVO);
	public List<Map<String, Object>> selectEnquireReplyDetail(AdminEnquireReplyVO replyVO);
	public int updateReplyCheck(AdminEnquireReplyVO replyVO);
}
