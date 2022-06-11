package com.myspring.Onaju.admin.adminBoard.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminBoard.dao.AdminBoardDAO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireReplyVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;
import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;

@Service("adminBoardService")
public class AdminBoardServiceImpl implements AdminBoardService {
	
	@Autowired
	private AdminBoardDAO adminBoardDAO;
	
	@Override
	public List<Map<String,Object>> noticeList(Criteria cri) throws Exception {
		return  adminBoardDAO.selectAllNoticeList(cri);
	}
	
	@Override
	public Map<String, Object> noticeDetail(String notice_code) throws Exception {
		return adminBoardDAO.selectNoticeDetail(notice_code);
	}
	
	@Override
	public String getImgFile(Map<String, Object> imgInfoMap) throws Exception {
		return adminBoardDAO.selectImgFile(imgInfoMap);
	}
	
	@Override
	public int noticeListTotal() throws Exception {
		return adminBoardDAO.selectAllNoticeListTotal();
	}
	
	@Override
	public int insertNotice(AdminNoticeVO noticeVO) throws Exception {		
		return adminBoardDAO.insertNotice(noticeVO);
	}

	@Override
	public int insertImgFile(Map<String, Object> imgFile) throws Exception {
		return adminBoardDAO.insertImgFile(imgFile);
	}

	@Override
	public List<AdminNoticeVO> searchNotice(AdminNoticeVO searchVO) throws Exception {
		return adminBoardDAO.selectSearchNotice(searchVO);
	}

	@Override
	public List<Map<String, Object>> enquireBoardList(AdminEnquireVO enquireVO) {
		return adminBoardDAO.selectAllEnquireList(enquireVO);
	}

	@Override
	public List<Map<String, Object>> enquireBoardDetail(AdminEnquireVO enquireVO) {
		return adminBoardDAO.selectEnquireDetail(enquireVO);
	}

	@Override
	public void updateHit(AdminEnquireVO enquireVO) {
		adminBoardDAO.updateHit(enquireVO);
		
	}
	
	@Override
	public int insertEnquireReply(AdminEnquireReplyVO replyVO) {
		return adminBoardDAO.insertEnquireReply(replyVO);
	}

	@Override
	public List<Map<String, Object>> enquireReplyDetail(AdminEnquireReplyVO replyVO) {
		return adminBoardDAO.selectEnquireReplyDetail(replyVO);
	}

	@Override
	public int updateReplyCheck(AdminEnquireReplyVO replyVO) {
		return adminBoardDAO.updateReplyCheck(replyVO);
	}

	



	

}
