package com.application.cms.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.cms.member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertMember(MemberDTO memberDTO) throws Exception {
		sqlSession.insert("memberMapper.insertMember", memberDTO);
	}

	@Override
	public MemberDTO selectOneLoginMember(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne("memberMapper.selectOneLoginMember", memberDTO);
	}

	@Override
	public int selectMyOrderCnt(String memberId) throws Exception {
		return sqlSession.selectOne("memberMapper.selectMyOrderCnt", memberId);
	}

	@Override
	public int selectMyCartCnt(String memberId) throws Exception {
		return sqlSession.selectOne("memberMapper.selectMyCartCnt", memberId);
	}

}
