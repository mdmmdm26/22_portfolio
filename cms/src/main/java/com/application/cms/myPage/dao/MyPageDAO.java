package com.application.cms.myPage.dao;

import com.application.cms.member.dto.MemberDTO;

public interface MyPageDAO {
	
	public MemberDTO selectOneMyInfo(String memberId) throws Exception;

}
