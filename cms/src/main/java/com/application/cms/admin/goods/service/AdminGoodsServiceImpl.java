package com.application.cms.admin.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.cms.admin.goods.dao.AdminGoodsDAO;
import com.application.cms.goods.dto.GoodsDTO;

@Service
public class AdminGoodsServiceImpl implements AdminGoodsService {
	
	@Autowired
	private AdminGoodsDAO adminGoodsDAO;

	@Override
	public void addNewGoods(GoodsDTO goodsDTO) throws Exception {
		adminGoodsDAO.insertGoods(goodsDTO);
		
	}

	@Override
	public List<GoodsDTO> getGoodsList() throws Exception {
		return adminGoodsDAO.selectListGoods();
	}

}
