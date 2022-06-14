package com.myspring.Onaju.admin.adminHost.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminHost.dao.AdminHostDAO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;


@Service("adminHostService")
public class AdminHostServiceImpl implements AdminHostService {
	@Autowired
	private AdminHostDAO adminHostDAO;
	
	@Override
	public List<Map<String, Object>> listAllHost(Map<String, Object> condMap) {
		return adminHostDAO.selectAllHostList(condMap);	 
	}
	
	@Override
	public AdminHostVO hostDetail(String h_id) throws Exception {
		return adminHostDAO.selectHostDetail(h_id);
	}

	@Override
	public int hostListTotal() {
		return adminHostDAO.selectAllHostListTotal();
	}
		
	@Override
	public List<Map<String, Object>> listAllHostInfo(Criteria cri) {
		return  adminHostDAO.selectAllHostInfoList(cri);	 
	}
	
	@Override
	public AdminHostInfoVO hostInfoDetail(String h_code) throws Exception {
		return adminHostDAO.selectHostInfoDetail(h_code);
	}
	
	@Override
	public int hostInfoListTotal() {
		return adminHostDAO.selectAllHostInfoListTotal();
	}
	
	@Override
	public int updateHost(AdminHostVO hostVO) {
		return adminHostDAO.selectUpdateHost(hostVO);
	}

	@Override
	public int deleteHost(String h_id) {
		return adminHostDAO.selectDeleteHost(h_id);
	}

	@Override
	public List<Map<String, Object>> searchHost(Map<String, Object> searchMap) {
		return adminHostDAO.selectSearchHost(searchMap);
	}

	@Override
	public int hostListTotal(Map<String, Object> searchMap) {
		return adminHostDAO.selectAllHostListTotal(searchMap);
	}
}
