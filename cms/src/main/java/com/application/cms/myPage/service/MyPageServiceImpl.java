package com.application.cms.myPage.service;

import java.util.List;
import java.util.Map;

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

	@Override
	public void modifyInfo(MemberDTO memberDTO) throws Exception {
		if (memberDTO.getSmsstsYn() == null) memberDTO.setSmsstsYn("N");
		if (memberDTO.getEmailstsYn() == null) memberDTO.setEmailstsYn("N");
		myPageDAO.updateInfo(memberDTO);
		
	}

	@Override
	public void removeInfo(String memberId) throws Exception {
		myPageDAO.deleteMember(memberId);
		
	}

//	@Override
//	public List<Map<String, Object>> getMyCartList(String memberId) throws Exception {
//		return myPageDAO.selectListMyCart(memberId);
//	}
//
//	@Override
//	public int cartListCnt(String memberId) throws Exception {
//		return myPageDAO.selectMyCartCnt(memberId);
//	}
	
	

}
