package com.myspring.Onaju.admin.adminGoods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminGoods.dao.AdminGoodsDAO;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

@Service("adminGoodsService")
public class AdminGoodsServiceImpl implements AdminGoodsService {
	@Autowired
	private AdminGoodsDAO adminGoodsDAO;
	
	@Override
	public List<AdminHostRoomVO> roomsList(AdminHostRoomVO roomVO) {
		return adminGoodsDAO.selectAllRoomList(roomVO);
	}

	@Override
	public int adminRoomTotal(AdminHostRoomVO roomVO) throws Exception {
		return adminGoodsDAO.selectAllRoomTotal(roomVO);
	}

	@Override
	public AdminHostRoomVO roomDetail(String room_code) {
		return adminGoodsDAO.selectOneRoomDetail(room_code);
	}

}
