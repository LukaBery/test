package com.myspring.Onaju.admin.adminHost.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminHost.dao.AdminHostDAO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;


@Service("adminHostService")
public class AdminHostServiceImpl implements AdminHostService {
	@Autowired
	private AdminHostDAO adminHostDAO;
	
	@Override
	public List<AdminHostVO> listAllHost(AdminHostVO vo) throws DataAccessException {
		return adminHostDAO.selectAllHostList(vo);	 
	}
	
	@Override
	public AdminHostVO hostDetail(String h_id) throws Exception {
		return adminHostDAO.selectHostDetail(h_id);
	}

	@Override
	public int hostListTotal(AdminHostVO vo) throws Exception {
		return adminHostDAO.selectAllHostListTotal(vo);
	}
		
	@Override
	public List<AdminHostInfoVO> listAllHostInfo(AdminHostInfoVO vo) throws DataAccessException {
		return  adminHostDAO.selectAllHostInfoList(vo);	 
	}
	
	@Override
	public AdminHostInfoVO hostInfoDetail(String h_code) throws Exception {
		return adminHostDAO.selectHostInfoDetail(h_code);
	}
	
	@Override
	public int hostInfoListTotal(AdminHostInfoVO vo) throws Exception {
		return adminHostDAO.selectAllHostInfoListTotal(vo);
	}
}
