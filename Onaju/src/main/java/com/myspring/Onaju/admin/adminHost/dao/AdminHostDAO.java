package com.myspring.Onaju.admin.adminHost.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;



public interface AdminHostDAO {
	public List<Map<String, Object>> selectAllHostList(Criteria cri);
	public List<Map<String, Object>> selectAllHostInfoList(Criteria cri);
	public int selectAllHostListTotal();
	public int selectAllHostInfoListTotal();
	public AdminHostVO selectHostDetail(String h_code) throws DataAccessException;
	public AdminHostInfoVO selectHostInfoDetail(String h_id) throws DataAccessException;
	public int selectUpdateHost(AdminHostVO hostVO);
	public int selectDeleteHost(String h_id);
	public List<AdminHostVO> selectSearchHost(AdminHostVO searchVO);
}
