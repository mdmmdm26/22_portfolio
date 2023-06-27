package com.application.cms.goods.dao;

import java.util.List;

import com.application.cms.goods.dto.GoodsDTO;

public interface GoodsDAO {
	
	public List<GoodsDTO> selectListCategoryGoods(GoodsDTO goodsDTO) throws Exception;

}
