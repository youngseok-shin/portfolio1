package com.spring.biz.vo;

public class CampSelectVO {
	private int selectNum;
	private int campNum;  
	private int memberNum;
	
	public int getSelectNum() {
		return selectNum;
	}
	public void setSelectNum(int selectNum) {
		this.selectNum = selectNum;
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
		return "CampSelectVO [selectNum=" + selectNum + ", campNum=" + campNum + ", memberNum=" + memberNum + "]";
	}
	
	
}
