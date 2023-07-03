package com.application.cms.myPage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.cms.member.dto.MemberDTO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberDTO selectOneMyInfo(String memberId) throws Exception {
		return sqlSession.selectOne("myPageMapper.selectOneMyInfo", memberId);
	}

	@Override
	public void updateInfo(MemberDTO memberDTO) throws Exception {
		sqlSession.update("myPageMapper.updateInfo", memberDTO);
	}

	@Override
	public void deleteMember(String memberId) throws Exception {
		sqlSession.delete("myPageMapper.deleteMember", memberId);
	}

	@Override
	public List<Map<String, Object>> selectListMyCart(String memberId) throws Exception {
		return sqlSession.selectList("myPageMapper.selectListMyCart", memberId);
	}

	@Override
	public int selectMyCartCnt(String memberId) throws Exception {
		return sqlSession.selectOne("myPageMapper.selectMyCartCnt", memberId);
	}

}
