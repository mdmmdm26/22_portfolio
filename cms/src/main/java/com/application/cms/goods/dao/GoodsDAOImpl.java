package com.application.cms.goods.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.cms.goods.dto.GoodsDTO;

@Repository
public class GoodsDAOImpl implements GoodsDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<GoodsDTO> selectListGoods(GoodsDTO goodsDTO) throws Exception {
		return sqlSession.selectList("goodsMapper.selectListGoods", goodsDTO);
	}

	@Override
	public GoodsDTO selectOneGoods(int goodsCd) throws Exception {
		return sqlSession.selectOne("goodsMapper.selectOneGoods", goodsCd);
	}
	
	
}
