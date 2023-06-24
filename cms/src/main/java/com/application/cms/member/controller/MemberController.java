package com.application.cms.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
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
			   jsScript += "alert('Now you are member');";
			   jsScript += "location.href='" + request.getContextPath() + "/';";
			   jsScript += "</script>";	
		
	    return jsScript;
	}
	
	@GetMapping("/login")
	public ModelAndView login() throws Exception{
		return new ModelAndView("/member/login");
	}
	
	@PostMapping("/login")
	@ResponseBody
	public String login(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		
		String jsScript = "";
		
		if (memberService.loginMember(memberDTO)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("memberId", memberDTO.getMemberId());
			session.setAttribute("role", "client");
			session.setAttribute("myOrderCnt", memberService.getMyOrderCnt(memberDTO.getMemberId()));
			session.setAttribute("myCartCnt", memberService.getMyCartCnt(memberDTO.getMemberId()));
			session.setMaxInactiveInterval(60 * 30);
			
			jsScript += "<script>";
			jsScript += "alert('You logged in');";
			jsScript += "location.href='" + request.getContextPath() + "/';";
			jsScript += "</script>";
		}
		else {
			jsScript += "<script>";
			jsScript += "alert('Check your ID and password');";
			jsScript += "history.go(-1);";
			jsScript += "</scirpt>";
		}
		
		return jsScript;
	}
	
	@GetMapping("/logout")
	@ResponseBody
	public String logout(HttpServletRequest request) throws Exception{
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		String jsScript = "<script>";
			   jsScript += "alert('You logged out');";
			   jsScript += "location.href='" + request.getContextPath() + "/';";
			   jsScript += "</script>";
		
		return jsScript;
		
	}
	
}
