package com.myspring.Onaju.admin.adminGoods.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

public interface AdminGoodsDAO {
	public List<AdminHostRoomVO> selectAllRoomList(AdminHostRoomVO roomVO);
	public int selectAllRoomTotal(AdminHostRoomVO roomVO) throws DataAccessException;
	public AdminHostRoomVO selectOneRoomDetail(String room_code);
}
