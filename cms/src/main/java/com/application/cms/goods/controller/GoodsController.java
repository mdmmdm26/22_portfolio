package com.application.cms.goods.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.application.cms.goods.dto.GoodsDTO;
import com.application.cms.goods.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController {

	@Autowired
	private GoodsService goodsService;
	
	@GetMapping("/goodsList")
	public ModelAndView categoryList(@ModelAttribute GoodsDTO goodsDTO) throws Exception{
		
		ModelAndView mv = new ModelAndView("/goods/goodsList");
		
		mv.addObject("goodsList", goodsService.getGoodsList(goodsDTO));
		
		return mv;

	}
	
	@GetMapping("/goodsDetail")
	public ModelAndView goodsDetail(@RequestParam("goodsCd") int goodsCd) throws Exception {
		
		ModelAndView mv = new ModelAndView("/goods/goodsDetail");
		
		GoodsDTO goodsDTO = goodsService.getGoodsDetail(goodsCd);
		
		mv.addObject("goodsDTO", goodsDTO);
		
		return mv;
		
	}
	
}
