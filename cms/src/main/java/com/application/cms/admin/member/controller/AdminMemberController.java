package com.application.cms.admin.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.cms.admin.member.dto.AdminDTO;
import com.application.cms.admin.member.service.AdminMemberService;

@Controller
@RequestMapping("/admin/member")
public class AdminMemberController {

	@Autowired
	private AdminMemberService adminMemberService;
	
	@GetMapping("/adminLogin")
	public ModelAndView adminLogin() throws Exception {
		return new ModelAndView("/admin/member/adminLogin");
	}
	
	@PostMapping("/adminLogin")
	@ResponseBody
	public String adminLogin(AdminDTO adminDTO, HttpServletRequest request) throws Exception{
		
		String jsScript = "";
		
		if (adminMemberService.adminLogin(adminDTO)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("memberId", adminDTO.getAdminId());
			session.setAttribute("role", "admin");
			session.setMaxInactiveInterval(60 * 30);
			
			jsScript = "<script>";
			jsScript += "alert('You are logged in');";
			jsScript += "location.href='" + request.getContextPath() + "/';";
			jsScript += "</script>";

		}
		else {
			
			jsScript += "<script>";
			jsScript += "alert('Check your ID and password');";
			jsScript += "history.go(-1);";
			jsScript += "</script>";
			
		}
		
		return jsScript;
		
	}
	
}
