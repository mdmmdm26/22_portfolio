package com.application.cms.myPage.service;

import com.application.cms.member.dto.MemberDTO;

public interface MyPageService {

	public MemberDTO getMyInfo(String memberId) throws Exception;
	
}
