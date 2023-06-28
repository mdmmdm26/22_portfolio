package com.application.cms.admin.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.cms.admin.member.dto.AdminDTO;

@Repository
public class AdminMemberDAOImpl implements AdminMemberDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public AdminDTO selectAdminLogin(AdminDTO adminDTO) throws Exception {
		return sqlSession.selectOne("adminMemberMapper.selectAdminLogin", adminDTO);
	}

}
