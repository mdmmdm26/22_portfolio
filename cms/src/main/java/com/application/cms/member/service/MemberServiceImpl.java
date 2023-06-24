package com.application.cms.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.application.cms.member.dao.MemberDAO;
import com.application.cms.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public void addMember(MemberDTO memberDTO) throws Exception {
		memberDTO.setPasswd(bCryptPasswordEncoder.encode(memberDTO.getPasswd()));
		if (memberDTO.getSmsstsYn() == null) memberDTO.setSmsstsYn("N");
		if (memberDTO.getEmailstsYn() == null) memberDTO.setEmailstsYn("N");
		memberDAO.insertMember(memberDTO);
		
	}

	@Override
	public boolean loginMember(MemberDTO memberDTO) throws Exception {
		
		MemberDTO dbMemberId = memberDAO.selectOneLoginMember(memberDTO);
		if (dbMemberId != null) {
			if (bCryptPasswordEncoder.matches(memberDTO.getPasswd(), dbMemberId.getPasswd())) {
				return true;
			}
		}
		
		return false;
	}

	@Override
	public int getMyOrderCnt(String memberId) throws Exception {
		return memberDAO.selectMyOrderCnt(memberId);
	}

	@Override
	public int getMyCartCnt(String memberId) throws Exception {
		return memberDAO.selectMyCartCnt(memberId);
	}

	
	
}
