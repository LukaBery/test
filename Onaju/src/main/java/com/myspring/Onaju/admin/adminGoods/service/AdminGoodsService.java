package com.myspring.Onaju.admin.adminGoods.service;

import java.util.List;

import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

public interface AdminGoodsService {
	public List<AdminHostRoomVO> roomsList(AdminHostRoomVO roomVO);
	public int adminRoomTotal(AdminHostRoomVO roomVO) throws Exception;
	public AdminHostRoomVO roomDetail(String room_code);
}
