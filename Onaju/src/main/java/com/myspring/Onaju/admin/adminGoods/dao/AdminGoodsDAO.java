package com.myspring.Onaju.admin.adminGoods.dao;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

public interface AdminGoodsDAO {
	public List<Map<String, Object>> selectAllRoomList(Criteria cri);
	public int selectAllRoomTotal();
	public AdminHostRoomVO selectOneRoomDetail(String room_code);
}
