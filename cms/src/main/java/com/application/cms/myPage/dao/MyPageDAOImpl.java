package com.application.cms.myPage.dao;

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

}
