package com.application.cms.admin.goods.service;

import java.util.List;

import com.application.cms.goods.dto.GoodsDTO;

public interface AdminGoodsService {
	
	public void addNewGoods(GoodsDTO goodsDTO) throws Exception;
	public List<GoodsDTO> getGoodsList() throws Exception;

}
