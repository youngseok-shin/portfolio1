package com.spring.biz.vo;

public class CampRecommendVO {
	private int recommendNum;
	private int campNum;  
	private int memberNum;
	
	public int getRecommendNum() {
		return recommendNum;
	}
	public void setRecommendNum(int recommendNum) {
		this.recommendNum = recommendNum;
	}
	public int getCampNum() {
		return campNum;
	}
	public void setCampNum(int campNum) {
		this.campNum = campNum;
	}

	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	
	@Override
	public String toString() {
		return "CampRecommendVO [recommendNum=" + recommendNum + ", campNum=" + campNum + ", memberNum=" + memberNum
				+ "]";
	}

	
	
	
}
