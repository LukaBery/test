package com.myspring.Onaju.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.board.review.vo.ReviewVO;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.order.vo.OrderVO;

@Repository("myPageDAO")
public class MyPageDAOImpl implements MyPageDAO {
	@Autowired
	private SqlSession sqlSession;


	public List<OrderVO> selectMyOrderGoodsList(Map _dateMap) throws DataAccessException {
		List<OrderVO> orderGoodsList = (List) sqlSession.selectList("mapper.mypage.selectMyOrderGoodsList", _dateMap);
		if (orderGoodsList != null) {
			for (int i = 0; i < orderGoodsList.size(); i++) {
				OrderVO orderVO = (OrderVO) orderGoodsList.get(i);				
					if (orderVO.getReview_state() != null && orderVO.getReview_state().equals("y")) {
						String order = orderVO.getOrder_code();
						ReviewVO reviewVO = sqlSession.selectOne("mapper.review.selectReview", order);
						if(reviewVO != null) {
						int review_num = reviewVO.getReview_num();
						String review_star = reviewVO.getReview_star();
						String review_content = reviewVO.getReview_content();
						orderVO.setReview_num(review_num);
						orderVO.setReview_star(review_star);
						orderVO.setReview_content(review_content);
						orderGoodsList.set(i, orderVO);	
						}
				}
			}
		}
		return orderGoodsList;
	}
	public void updateMyInfo(Map memberMap) throws DataAccessException {
		sqlSession.update("mapper.mypage.updateMyInfo", memberMap);
	}

	public MemberVO selectMyDetailInfo(String u_id) throws DataAccessException {
		MemberVO memberVO = (MemberVO) sqlSession.selectOne("mapper.mypage.selectMyDetailInfo", u_id);
		return memberVO;

	}


	public void deleteMember(String u_id) throws DataAccessException {
		sqlSession.delete("mapper.mypage.deleteMember", u_id);
	}
	public MemberVO selectdeleteMemberInfo(String u_id) throws DataAccessException{
		MemberVO memberVO=(MemberVO)sqlSession.selectOne("mapper.mypage.selectdeleteMemberInfo",u_id);
		return memberVO;
		
	}
	
}
