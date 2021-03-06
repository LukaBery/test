package com.myspring.Onaju.admin.adminHost.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;


@Repository("adminHostDAO")
public class AdminHostDAOImpl implements AdminHostDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Map<String, Object>> selectAllHostList(Criteria cri) {
		return sqlSession.selectList("mapper.admin.host.selectAllHostList", cri);	
	}

	@Override
	public int selectAllHostListTotal(Criteria cri) {
		return sqlSession.selectOne("mapper.admin.host.selectAllHostTotal",cri);
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
	public int selectAllHostInfoListTotal(Criteria cri) {
		return sqlSession.selectOne("mapper.admin.host.selectAllHostInfoTotal", cri);
	}

	@Override
	public List<Map<String, Object>> selectAllHostInfoList(Criteria cri) {
		return sqlSession.selectList("mapper.admin.host.selectAllHostInfoList", cri);
	}
	
	@Override
	public int selectUpdateHost(AdminHostVO hostVO) {
		return sqlSession.update("mapper.admin.host.selectUpdateHost", hostVO);
	}

	@Override
	public int selectDeleteHost(String h_id) {
		return sqlSession.delete("mapper.admin.host.selectDeleteHost", h_id);
	}

	@Override
	public List<Map<String, Object>> selectSearchHost(Map<String, Object> searchMap) {
		 List<Map<String, Object>> searchhost = sqlSession.selectList("mapper.admin.host.selectSearchHost", searchMap);
		 return searchhost;
	}

	@Override
	public int selectAllHostListTotal(Map<String, Object> searchMap) {
		return sqlSession.selectOne("mapper.admin.host.selectAllHostTotal", searchMap);
	}
}
