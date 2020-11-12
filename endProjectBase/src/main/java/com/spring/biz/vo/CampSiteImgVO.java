package com.spring.biz.vo;

public class CampSiteImgVO {

	private int imgNum;
	private int contentId;
	private String imageUrl;
	private String createdtime;
	private String modifiedtime;
	
	public int getImgNum() {
		return imgNum;
	}
	public void setImgNum(int imgNum) {
		this.imgNum = imgNum;
	}
	public int getContentId() {
		return contentId;
	}
	public void setContentId(int contentId) {
		this.contentId = contentId;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getCreatedtime() {
		return createdtime;
	}
	public void setCreatedtime(String createdtime) {
		this.createdtime = createdtime;
	}
	public String getModifiedtime() {
		return modifiedtime;
	}
	public void setModifiedtime(String modifiedtime) {
		this.modifiedtime = modifiedtime;
	}
	
	@Override
	public String toString() {
		return "CampSiteImgVO [imgNum=" + imgNum + ", contentId=" + contentId + ", imageUrl=" + imageUrl
				+ ", createdtime=" + createdtime + ", modifiedtime=" + modifiedtime + "]";
	}
	
	
}
