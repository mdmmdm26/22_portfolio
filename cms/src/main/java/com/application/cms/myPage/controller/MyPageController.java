package com.application.cms.myPage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.cms.member.dto.MemberDTO;
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
		
		return mv;
		
	}
	
	@PostMapping("/modifyInfo")
	@ResponseBody
	public String modify(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		
		myPageService.modifyInfo(memberDTO);
		
		String jsScript = "<script>";
			   jsScript += "alert('Your information changed');";
			   jsScript += "location.href='" + request.getContextPath() + "/myPage/myInfo?memberId=" + memberDTO.getMemberId() + "';";
			   jsScript +="</script>";
			   
		return jsScript;	   
	}
	
	@GetMapping("/removeMember")
	@ResponseBody
	public String remove(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		myPageService.removeInfo(request.getParameter("memberId"));
		
		String jsScript = "<script>";
			   jsScript += "alert('You has been deleted');";
			   jsScript += "location.href='" + request.getContextPath() + "/';";
			   jsScript += "</script>";
			
		return jsScript;
		
	}
	
	@GetMapping("/myCart")
	public ModelAndView myCart(HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		
		ModelAndView mv = new ModelAndView("/myPage/myCart");
		
		String memberId = (String)session.getAttribute("memberId");
		
		mv.addObject("myCartList", myPageService.getMyCartList(memberId));
		mv.addObject("cartListCnt", myPageService.cartListCnt(memberId));
		
		return mv;
		
	}
	

}
