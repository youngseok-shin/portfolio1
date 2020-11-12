package com.spring.biz.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class BoardImageVO{
	
	private int imageId;
	private String boardImg;
	private int memberNum;
	private String createDate;
	private int boardNum;
	
	private MultipartFile imgfile;

	private List<BoardImageVO> imageList;
	

	
	
	
	
	public MultipartFile getImgfile() {
		return imgfile;
	}
	public void setImgfile(MultipartFile imgfile) {
		this.imgfile = imgfile;
	}
	
	
	
	public List<BoardImageVO> getImageList() {
		return imageList;
	}
	public void setImageList(List<BoardImageVO> imageList) {
		this.imageList = imageList;
	}
	public int getImageId() {
		return imageId;
	}
	public void setImageId(int imageId) {
		this.imageId = imageId;
	}
	public String getBoardImg() {
		return boardImg;
	}
	public void setBoardImg(String boardImg) {
		this.boardImg = boardImg;
	}
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	@Override
	public String toString() {
		return "BoardImageVO [imageId=" + imageId + ", boardImg=" + boardImg + ", memberNum=" + memberNum
				+ ", createDate=" + createDate + ", boardNum=" + boardNum + ", imgfile=" + imgfile + ", imageList="
				+ imageList + "]";
	}
	
	
	
	
	
	
	
}
