package com.myspring.Onaju.admin.adminGoods.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

@Repository("adminGoodsDAO")
public class AdminGoodsDAOImpl implements AdminGoodsDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AdminHostRoomVO> selectAllRoomList(AdminHostRoomVO roomVO) {
		return sqlSession.selectList("mapper.admin.goods.selectAllRoomList", roomVO);
	}

	@Override
	public int selectAllRoomTotal(AdminHostRoomVO roomVO) throws DataAccessException {
		return sqlSession.selectOne("mapper.admin.goods.selectAllRoomTotal", roomVO);
	}

	@Override
	public AdminHostRoomVO selectOneRoomDetail(String room_code) {
		return sqlSession.selectOne("mapper.admin.goods.selectOneRoomDetail", room_code);
	}

}
