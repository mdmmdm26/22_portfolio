package com.application.cms.myPage.service;

import java.util.List;
import java.util.Map;

import com.application.cms.member.dto.MemberDTO;
import com.application.cms.myPage.dto.CartDTO;

public interface MyPageService {

	public MemberDTO getMyInfo(String memberId) throws Exception;
	public void modifyInfo(MemberDTO memberDTO) throws Exception;
	public void removeInfo(String memberId) throws Exception;
	public List<Map<String, Object>> getMyCartList(String memberId) throws Exception;
	public int cartListCnt(String memberId) throws Exception;
	public boolean checkDuplicatedCart(CartDTO cartDTO) throws Exception;
	public void addCart(CartDTO cartDTO) throws Exception;
	public void modifyCartGoodsQty(Map<String, Object> updateMap) throws Exception;

}
