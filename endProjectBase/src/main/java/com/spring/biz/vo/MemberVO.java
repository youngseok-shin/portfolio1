package com.spring.biz.vo;

import java.util.List;

public class MemberVO {
	private int memberNum;
	private String memberId;
	private String memberPassword;
	private String gender;
	private String memberName;
	private String tel1;
	private String tel2;
	private String email;
	private String emailYn;
	private String memberAddr;
	private String memberDetail;
	private String regDate;
	private String modifyDate;
	private String delYn;
	private int memberType;
	private List<String> memberList;

	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmailYn() {
		return emailYn;
	}
	public void setEmailYn(String emailYn) {
		this.emailYn = emailYn;
	}
	public String getMemberAddr() {
		return memberAddr;
	}
	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}
	public String getMemberDetail() {
		return memberDetail;
	}
	public void setMemberDetail(String memberDetail) {
		this.memberDetail = memberDetail;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public int getMemberType() {
		return memberType;
	}
	public void setMemberType(int memberType) {
		this.memberType = memberType;
	}
	
	public List<String> getMemberList() {
		return memberList;
	}
	public void setMemberList(List<String> memberList) {
		this.memberList = memberList;
	}
	@Override
	public String toString() {
		return "MemberVO [memberNum=" + memberNum + ", memberId=" + memberId + ", memberPassword=" + memberPassword
				+ ", gender=" + gender + ", memberName=" + memberName + ", tel1=" + tel1 + ", tel2=" + tel2 + ", email="
				+ email + ", emailYn=" + emailYn + ", memberAddr=" + memberAddr + ", memberDetail=" + memberDetail
				+ ", regDate=" + regDate + ", modifyDate=" + modifyDate + ", delYn=" + delYn + ", memberType="
				+ memberType + "]";
	}
	
	
}
