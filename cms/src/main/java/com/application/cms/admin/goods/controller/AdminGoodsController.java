package com.application.cms.admin.goods.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.application.cms.admin.goods.service.AdminGoodsService;
import com.application.cms.goods.dto.GoodsDTO;
import com.application.cms.goods.service.GoodsService;

@Controller
@RequestMapping("/admin/goods")
public class AdminGoodsController {
	
	@Autowired
	private AdminGoodsService adminGoodsService;
	
	@Autowired
	private GoodsService goodsService;
	
	private final String GOODS_IMAGE_REPO_PATH = "C:\\file_repo\\";
	
	@GetMapping("/adminGoodsAdd")
	public ModelAndView adminGoods() {
		return new ModelAndView("/admin/goods/adminGoodsAdd");
	}
	
	@PostMapping("/adminGoodsAdd")
	@ResponseBody
	public String adminGoodsAdd(MultipartHttpServletRequest multi) throws Exception {
		
		multi.setCharacterEncoding("utf-8");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		
		GoodsDTO goodsDTO = new GoodsDTO();
		goodsDTO.setGoodsNm(multi.getParameter("goodsNm"));
		goodsDTO.setPrice(Integer.parseInt(multi.getParameter("price")));
		goodsDTO.setDiscountRate(multi.getParameter("discountRate"));
		goodsDTO.setStock(Integer.parseInt(multi.getParameter("stock")));
		goodsDTO.setCategory(multi.getParameter("category"));
		goodsDTO.setBrand(multi.getParameter("brand"));
		goodsDTO.setPoint(multi.getParameter("point"));
		goodsDTO.setContent(multi.getParameter("content"));
		goodsDTO.setDeliveryPrice(Integer.parseInt(multi.getParameter("deliveryPrice")));

		Iterator<String> file = multi.getFileNames();
		if (file.hasNext()) {
			
			MultipartFile uploadFile = multi.getFile(file.next());
			
			if (!uploadFile.getOriginalFilename().isEmpty()) {
				String uploadFileName = UUID.randomUUID() + "_" + uploadFile.getOriginalFilename();
				File f = new File(GOODS_IMAGE_REPO_PATH + uploadFileName);
				uploadFile.transferTo(f);
				goodsDTO.setProfile(uploadFileName);
			}
			
		}
		
		adminGoodsService.addNewGoods(goodsDTO);
		
		String jsScript = "<script>";
			   jsScript += "alert('Goods is registerd');";
			   jsScript += "location.href='adminGoodsList';";
			   jsScript += "</script>";
			
		return jsScript;
		
	}
	
	@GetMapping("/adminGoodsList")
	public ModelAndView adminGoodsList() throws Exception {
		
		ModelAndView mv = new ModelAndView("/admin/goods/adminGoodsList");
		
		mv.addObject("goodsList", adminGoodsService.getGoodsList());
		return mv;
	}

}
