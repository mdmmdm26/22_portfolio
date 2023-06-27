package com.application.cms.goods.service;

import java.util.List;

import com.application.cms.goods.dto.GoodsDTO;

public interface GoodsService {
	
	public List<GoodsDTO> getCategoryGoodsList(GoodsDTO goodsDTO) throws Exception;

}
