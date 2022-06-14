package com.myspring.Onaju.admin.adminGoods.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

@Repository("adminGoodsDAO")
public class AdminGoodsDAOImpl implements AdminGoodsDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Map<String, Object>> selectAllRoomList(Criteria cri) {
		return sqlSession.selectList("mapper.admin.goods.selectAllRoomList", cri);
	}

	@Override
	public int selectAllRoomTotal() {
		return sqlSession.selectOne("mapper.admin.goods.selectAllRoomTotal");
	}

	@Override
	public AdminHostRoomVO selectOneRoomDetail(String room_code) {
		return sqlSession.selectOne("mapper.admin.goods.selectOneRoomDetail", room_code);
	}

}
