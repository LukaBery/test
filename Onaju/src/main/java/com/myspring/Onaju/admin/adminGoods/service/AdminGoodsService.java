package com.myspring.Onaju.admin.adminGoods.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

public interface AdminGoodsService {
	public List<Map<String, Object>> roomsList(Criteria cri);
	public int adminRoomTotal();
	public AdminHostRoomVO roomDetail(String room_code);
}
