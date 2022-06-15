package com.myspring.Onaju.admin.adminHost.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;



public interface AdminHostDAO {
	public List<Map<String, Object>> selectAllHostList(Criteria cri);
	public List<Map<String, Object>> selectAllHostInfoList(Criteria cri);
	public int selectAllHostListTotal(Criteria cri);
	public int selectAllHostListTotal(Map<String, Object> searchMap);
	public int selectAllHostInfoListTotal(Criteria cri);
	public AdminHostVO selectHostDetail(String h_id) throws DataAccessException;
	public AdminHostInfoVO selectHostInfoDetail(String h_id) throws DataAccessException;
	public int selectUpdateHost(AdminHostVO hostVO);
	public int selectDeleteHost(String h_id);
	public List<Map<String, Object>> selectSearchHost(Map<String, Object> searchMap);
}
