package com.application.cms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home() {
		return "/common/main";
	}
	
//	@GetMapping("/main")
//	public ModelAndView home() throws Exception{
//		return new ModelAndView("/common/main");
//	}
	
}
