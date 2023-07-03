package com.application.cms.goods.dao;

import java.util.List;

import com.application.cms.goods.dto.GoodsDTO;

public interface GoodsDAO {
	
	public List<GoodsDTO> selectListGoods(GoodsDTO goodsDTO) throws Exception;
	public GoodsDTO selectOneGoods(int goodsCd) throws Exception;

}
