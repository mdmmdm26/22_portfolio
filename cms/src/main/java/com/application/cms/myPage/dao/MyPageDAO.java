package com.application.cms.myPage.dao;

import java.util.List;
import java.util.Map;

import com.application.cms.member.dto.MemberDTO;

public interface MyPageDAO {
	
	public MemberDTO selectOneMyInfo(String memberId) throws Exception;
	public void updateInfo(MemberDTO memberDTO) throws Exception;
	public void deleteMember(String memberId) throws Exception;
//	public List<Map<String, Object>> selectListMyCart(String memberId) throws Exception;
//	public int selectMyCartCnt(String memberId) throws Exception;
	
}
