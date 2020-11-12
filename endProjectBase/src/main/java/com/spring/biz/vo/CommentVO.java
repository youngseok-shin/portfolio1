package com.spring.biz.vo;

public class CommentVO {
	private int commentNum;
	private int boardNum;
	private String memberName;
	private String content;
	private String createDate;
	
	public int getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
	
	@Override
	public String toString() {
		return "CommentVO [commentNum=" + commentNum + ", boardNum=" + boardNum + ", memberName=" + memberName
				+ ", content=" + content + ", createDate=" + createDate + "]";
	}
	
	
}
