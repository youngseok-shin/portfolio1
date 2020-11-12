package com.spring.biz.vo;

public class ShopVO {
	
	private int goodsId;
	private String memberId;
	private String goodsName;
	private int goodsPrice;
	private String goodsContent;
	private String goodsCreateDate;
	//private int goodsStatus;
	//private int categoryCode;
	private String goodsColor;
	private String goodsMadeFrom;
	private int goodsCnt;
	private String fileName;
	private String memberName;
	private int totalPrice;
	 
	
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsContent() {
		return goodsContent;
	}
	public void setGoodsContent(String goodsContent) {
		this.goodsContent = goodsContent;
	}
	public String getGoodsCreateDate() {
		return goodsCreateDate;
	}
	public void setGoodsCreateDate(String goodsCreateDate) {
		this.goodsCreateDate = goodsCreateDate;
	}
//	public int getGoodsStatus() {
//		return goodsStatus;
//	}
//	public void setGoodsStatus(int goodsStatus) {
//		this.goodsStatus = goodsStatus;
//	}
//	public int getCategoryCode() {
//		return categoryCode;
//	}
//	public void setCategoryCode(int categoryCode) {
//		this.categoryCode = categoryCode;
//	}
	public String getGoodsColor() {
		return goodsColor;
	}
	public void setGoodsColor(String goodsColor) {
		this.goodsColor = goodsColor;
	}
	public String getGoodsMadeFrom() {
		return goodsMadeFrom;
	}
	public void setGoodsMadeFrom(String goodsMadeFrom) {
		this.goodsMadeFrom = goodsMadeFrom;
	}
	public int getGoodsCnt() {
		return goodsCnt;
	}
	public void setGoodsCnt(int goodsCnt) {
		this.goodsCnt = goodsCnt;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	@Override
	public String toString() {
		return "ShopVO [goodsId=" + goodsId + ", memberId=" + memberId + ", goodsName=" + goodsName + ", goodsPrice="
				+ goodsPrice + ", goodsContent=" + goodsContent + ", goodsCreateDate=" + goodsCreateDate
				+ ", goodsColor=" + goodsColor + ", goodsMadeFrom=" + goodsMadeFrom + ", goodsCnt=" + goodsCnt + "]";
	}


	
	
	

	
}
	

	
	


