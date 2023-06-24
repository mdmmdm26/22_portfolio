package com.application.cms.myPage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.cms.member.dto.MemberDTO;
import com.application.cms.myPage.dao.MyPageDAO;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	private MyPageDAO myPageDAO;
	
	@Override
	public MemberDTO getMyInfo(String memberId) throws Exception {
		return myPageDAO.selectOneMyInfo(memberId);
	}
	
	

}
