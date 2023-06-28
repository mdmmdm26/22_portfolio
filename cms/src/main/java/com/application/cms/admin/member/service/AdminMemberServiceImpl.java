package com.application.cms.admin.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.cms.admin.member.dao.AdminMemberDAO;
import com.application.cms.admin.member.dto.AdminDTO;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	private AdminMemberDAO adminMemberDAO;
	
	@Override
	public boolean adminLogin(AdminDTO adminDTO) throws Exception {
		
		if (adminMemberDAO.selectAdminLogin(adminDTO) != null) {
			return true;
		}
		
		return false;
	}

	
	
}
