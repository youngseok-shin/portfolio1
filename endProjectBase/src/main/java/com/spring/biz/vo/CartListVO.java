package com.spring.biz.vo;

import java.util.List;

public class CartListVO {
	private String goodsId;
	private String cartId;
	private String goodsName;
	private String memberId;
	private String memberName;
	private String createDate;
	private int goodsPrice;
	private int goodsCnt;
	private String totalPrice;
	
	private String goodsColor;
	
	
	private String fileName;
	private List<String> cartIdList;
	
	
	
	public List<String> getCartIdList() {
		return cartIdList;
	}
	public void setCartIdList(List<String> cartIdList) {
		this.cartIdList = cartIdList;
	}
	
	
	
	public String getGoodsColor() {
		return goodsColor;
	}
	public void setGoodsColor(String goodsColor) {
		this.goodsColor = goodsColor;
	}
	public String getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
	public String getCartId() {
		return cartId;
	}
	public void setCartId(String cartId) {
		this.cartId = cartId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public int getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public int getGoodsCnt() {
		return goodsCnt;
	}
	public void setGoodsCnt(int goodsCnt) {
		this.goodsCnt = goodsCnt;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	@Override
	public String toString() {
		return "CartListVO [goodsId=" + goodsId + ", cartId=" + cartId + ", goodsName=" + goodsName + ", memberId="
				+ memberId + ", memberName=" + memberName + ", createDate=" + createDate + ", goodsPrice=" + goodsPrice
				+ ", goodsCnt=" + goodsCnt + ", totalPrice=" + totalPrice + ", goodsColor=" + goodsColor + "]";
	}
	
	
	
	


}
