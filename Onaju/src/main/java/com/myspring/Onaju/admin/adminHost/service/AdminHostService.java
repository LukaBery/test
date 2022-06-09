package com.myspring.Onaju.admin.adminHost.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;

public interface AdminHostService {
	public List<AdminHostVO> listAllHost(AdminHostVO vo) throws DataAccessException;
	public AdminHostVO hostDetail(String h_id) throws Exception;
	public int hostListTotal(AdminHostVO vo) throws Exception;
	
	public List<AdminHostInfoVO> listAllHostInfo(AdminHostInfoVO vo) throws DataAccessException;	
	public AdminHostInfoVO hostInfoDetail(String h_code) throws Exception;
	public int hostInfoListTotal(AdminHostInfoVO vo) throws Exception;
	public int updateHost (AdminHostVO hostVO);
	public int deleteHost (String h_id);
}
