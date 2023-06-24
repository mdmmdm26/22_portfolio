package com.application.cms.myPage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.application.cms.member.service.MemberService;
import com.application.cms.myPage.service.MyPageService;

@Controller
@RequestMapping("/myPage")
public class MyPageController {
	
	@Autowired
	private MyPageService myPageService;
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/myInfo")
	public ModelAndView myInfoMain(@RequestParam("memberId") String memberId) throws Exception{
		
		ModelAndView mv = new ModelAndView("/myPage/myInfo");
		mv.addObject("memberDTO", myPageService.getMyInfo(memberId));
		System.out.println(toString());
		
		return mv;
		
	}
	

}
