package com.application.cms.admin.goods.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.cms.goods.dto.GoodsDTO;

@Repository
public class AdminGoodsDAOImpl implements AdminGoodsDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertGoods(GoodsDTO goodsDTO) throws Exception {
		sqlSession.insert("adminGoodsMapper.insertGoods", goodsDTO);
	}

}
