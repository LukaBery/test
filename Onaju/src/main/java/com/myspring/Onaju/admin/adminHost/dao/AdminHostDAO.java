package com.myspring.Onaju.admin.adminHost.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;



public interface AdminHostDAO {
	public List<AdminHostVO> selectAllHostList(AdminHostVO vo) throws DataAccessException;
	public List<AdminHostInfoVO> selectAllHostInfoList(AdminHostInfoVO vo) throws DataAccessException;
	public int selectAllHostListTotal(AdminHostVO vo) throws DataAccessException;
	public int selectAllHostInfoListTotal(AdminHostInfoVO vo) throws DataAccessException;
	public AdminHostVO selectHostDetail(String h_code) throws DataAccessException;
	public AdminHostInfoVO selectHostInfoDetail(String h_id) throws DataAccessException;
	public int selectUpdateHost(AdminHostVO hostVO);
	public int selectDeleteHost(String h_id);
	public List<AdminHostVO> selectSearchHost(AdminHostVO searchVO);
}
