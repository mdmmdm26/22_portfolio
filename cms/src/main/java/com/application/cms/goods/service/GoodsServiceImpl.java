package com.application.cms.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.cms.goods.dao.GoodsDAO;
import com.application.cms.goods.dto.GoodsDTO;

@Service
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	private GoodsDAO goodsDAO;

	@Override
	public List<GoodsDTO> getCategoryGoodsList(GoodsDTO goodsDTO) throws Exception {
		return goodsDAO.selectListCategoryGoods(goodsDTO);
	}

}
