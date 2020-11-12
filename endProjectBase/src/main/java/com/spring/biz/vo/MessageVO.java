package com.spring.biz.vo;

public class MessageVO extends Pagination{
	private int mesNum;
	private String sId;
	private String rId;
	private String title;
	private String note;
	private String isChecked;
	private String inputDate;
	private int rowNum;
	
	public int getMesNum() {
		return mesNum;
	}
	public void setMesNum(int mesNum) {
		this.mesNum = mesNum;
	}
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	public String getrId() {
		return rId;
	}
	public void setrId(String rId) {
		this.rId = rId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getIsChecked() {
		return isChecked;
	}
	public void setIsChecked(String isChecked) {
		this.isChecked = isChecked;
	}
	public String getInputDate() {
		return inputDate;
	}
	public void setInputDate(String inputDate) {
		this.inputDate = inputDate;
	}
	
	public int getRowNum() {
		return rowNum;
	}
	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}
	@Override
	public String toString() {
		return "MessageVO [mesNum=" + mesNum + ", sId=" + sId + ", rId=" + rId + ", title=" + title + ", note=" + note
				+ ", isCheched=" + isChecked + ", inputDate=" + inputDate + "]";
	}
	
	
	
	
	
}
