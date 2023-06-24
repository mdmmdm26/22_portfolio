package com.application.cms.member.service;

import com.application.cms.member.dto.MemberDTO;

public interface MemberService {

	public void addMember(MemberDTO memberDTO) throws Exception;
	public boolean loginMember(MemberDTO memberDTO) throws Exception;
	public int getMyOrderCnt(String memberId) throws Exception;
	public int getMyCartCnt(String memberId) throws Exception;
	
}
