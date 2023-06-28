package com.application.cms.admin.member.service;

import com.application.cms.admin.member.dto.AdminDTO;

public interface AdminMemberService {
	
	public boolean adminLogin(AdminDTO adminDTO) throws Exception;

}
