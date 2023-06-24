package com.application.cms.member.dao;

import com.application.cms.member.dto.MemberDTO;

public interface MemberDAO {
	
	public void insertMember(MemberDTO memberDTO) throws Exception;
	public MemberDTO selectOneLoginMember(MemberDTO memberDTO) throws Exception;
	public int selectMyOrderCnt(String memberId) throws Exception;
	public int selectMyCartCnt(String memberId) throws Exception;
	
}
