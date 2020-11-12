package com.spring.biz.vo;

import java.util.List;

public class CartVO {
	
	private String cartId;
	private String	goodsId;
	private String  memberId;
	private String createDate;
	private int goodsCnt;
	private String isDelete;
	private String fileName;
	private String goodsColor;
	
	public String getCartId() {
		return cartId;
	}
	public void setCartId(String cartId) {
		this.cartId = cartId;
	}
	public String getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public int getGoodsCnt() {
		return goodsCnt;
	}
	public void setGoodsCnt(int goodsCnt) {
		this.goodsCnt = goodsCnt;
	}
	public String getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getGoodsColor() {
		return goodsColor;
	}
	public void setGoodsColor(String goodsColor) {
		this.goodsColor = goodsColor;
	}
	@Override
	public String toString() {
		return "CartVO [cartId=" + cartId + ", goodsId=" + goodsId + ", memberId=" + memberId + ", createDate="
				+ createDate + ", goodsCnt=" + goodsCnt + ", isDelete=" + isDelete + "]";
	}

	
	
	
}



