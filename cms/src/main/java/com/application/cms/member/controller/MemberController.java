package com.application.cms.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.cms.member.dto.MemberDTO;
import com.application.cms.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;

	@GetMapping("/register")
	public ModelAndView register() throws Exception{
		return new ModelAndView("/member/register");
	}
	
	@PostMapping("/register")
	@ResponseBody
	public String register(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		
		memberService.addMember(memberDTO);
		
		String jsScript = "<script>";
			   jsScript += "alert('회원가입 되었습니다.');";
			   jsScript += "locaton.href='"+ request.getContextPath() + "/';";
			   jsScript += "</script>";
	
		return jsScript;
	}
	
}
