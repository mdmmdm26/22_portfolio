package com.application.cms.admin.goods.dao;

import java.util.List;

import com.application.cms.goods.dto.GoodsDTO;

public interface AdminGoodsDAO {

	public void insertGoods(GoodsDTO goodsDTO) throws Exception;
	public List<GoodsDTO> selectListGoods() throws Exception;
	
}
