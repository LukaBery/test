package com.myspring.Onaju.admin.adminHost.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;


@Repository("adminHostDAO")
public class AdminHostDAOImpl implements AdminHostDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AdminHostVO> selectAllHostList(AdminHostVO vo) throws DataAccessException {
		return sqlSession.selectList("mapper.admin.host.selectAllHostList", vo);	
	}

	@Override
	public int selectAllHostListTotal(AdminHostVO vo) throws DataAccessException {
		return sqlSession.selectOne("mapper.admin.host.selectAllHostTotal", vo);
	}

	@Override
	public AdminHostVO selectHostDetail(String h_id) throws DataAccessException {
		return sqlSession.selectOne("mapper.admin.host.selectHostDetail", h_id);
	}

	@Override
	public AdminHostInfoVO selectHostInfoDetail(String h_code) throws DataAccessException {
		return sqlSession.selectOne("mapper.admin.host.selectHostInfoDetail", h_code);
	}

	@Override
	public int selectAllHostInfoListTotal(AdminHostInfoVO vo) throws DataAccessException {
		return sqlSession.selectOne("mapper.admin.host.selectAllHostTotal", vo);
	}

	@Override
	public List<AdminHostInfoVO> selectAllHostInfoList(AdminHostInfoVO vo) throws DataAccessException {
		return sqlSession.selectList("mapper.admin.host.selectAllHostInfoList", vo);
	}
	
	@Override
	public int selectUpdateHost(AdminHostVO hostVO) {
		return sqlSession.update("mapper.admin.host.selectUpdateHost", hostVO);
	}

	@Override
	public int selectDeleteHost(String h_id) {
		return sqlSession.delete("mapper.admin.host.selectDeleteHost", h_id);
	}
}
