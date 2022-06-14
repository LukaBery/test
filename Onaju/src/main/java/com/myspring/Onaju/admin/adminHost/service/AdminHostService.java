package com.myspring.Onaju.admin.adminHost.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;

public interface AdminHostService {
	public List<Map<String, Object>> listAllHost(Map<String, Object> condMap);
	public AdminHostVO hostDetail(String h_id) throws Exception;
	public int hostListTotal();
	public int hostListTotal(Map<String, Object> searchMap);
	
	public List<Map<String, Object>> listAllHostInfo(Criteria cri);	
	public AdminHostInfoVO hostInfoDetail(String h_code) throws Exception;
	public int hostInfoListTotal();
	public int updateHost (AdminHostVO hostVO);
	public int deleteHost (String h_id);
	public List<Map<String, Object>> searchHost(Map<String, Object> searchMap);
}
