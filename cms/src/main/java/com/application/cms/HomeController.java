package com.application.cms;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public ModelAndView home() throws Exception{
		
		ModelAndView mv = new ModelAndView("/common/main");
		
		Map<String, String> goodsListMap = new HashMap<String, String>();
		goodsListMap.put("category", "all");
		
		return mv;
	}
		
}
