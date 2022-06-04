package com.myspring.Onaju.admin.adminBoard.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;

@Repository("adminBoardDAO")
public class AdminBoardDAOImpl implements AdminBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AdminNoticeVO> selectAllNoticeList(AdminNoticeVO noticeVO) {
		return sqlSession.selectList("mapper.admin.board.selectAllNoticeList", noticeVO);
	}
	
	@Override
	public Map<String, Object> selectNoticeDetail(String notice_code) {
		return sqlSession.selectOne("mapper.admin.board.selectNoticeDetail", notice_code);
	}
	
	@Override
	public String selectImgFile(Map<String, Object> imgInfoMap) {
		return sqlSession.selectOne("mapper.admin.board.selectImgFile", imgInfoMap);
	}
	
	@Override
	public int selectAllNoticeListTotal(AdminNoticeVO noticeVO) {
		return sqlSession.selectOne("mapper.admin.board.selectAllNoticeTotal", noticeVO);
	}
	
	@Override
	public int insertNotice(AdminNoticeVO noticeVO) {
		return sqlSession.insert("mapper.admin.board.insertNotice", noticeVO);
	}

	@Override
	public int insertImgFile(Map<String, Object> imgFile) {
		return sqlSession.insert("mapper.admin.board.insertImgFile", imgFile);
	}

	@Override
	public List<AdminNoticeVO> selectSearchNotice(AdminNoticeVO searchVO) {
		return sqlSession.selectList("mapper.admin.board.selectSearchNotice", searchVO);
	}

	

	
}
