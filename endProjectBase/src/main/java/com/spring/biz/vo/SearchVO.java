package com.spring.biz.vo;

public class SearchVO {

	private String searchKeyword;
	private String searchValue;	
	private String isConfirm;
	
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	public String getIsConfirm() {
		return isConfirm;
	}
	public void setIsConfirm(String isConfirm) {
		this.isConfirm = isConfirm;
	}
	
	@Override
	public String toString() {
		return "SearchVO [searchKeyword=" + searchKeyword + ", searchValue=" + searchValue + ", isConfirm=" + isConfirm
				+ "]";
	}
	
	
	
}
