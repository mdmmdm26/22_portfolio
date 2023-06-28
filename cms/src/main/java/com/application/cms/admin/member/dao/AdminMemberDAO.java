package com.application.cms.admin.member.dao;

import com.application.cms.admin.member.dto.AdminDTO;

public interface AdminMemberDAO {
	
	public AdminDTO selectAdminLogin(AdminDTO adminDTO) throws Exception;

}
