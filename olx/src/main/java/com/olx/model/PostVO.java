package com.olx.model;

import java.util.Date;

public class PostVO {

	private int postNo;
	private String postTitle;
	private String postContent;
	private Date postDate;
	private String postTag;
	private int postHit;
	private int postFavorit;
	private String postState;
	private String postImg;
	private int memNo;
	
	
	// DB�뿉�뒗 �뾾吏�留� 寃뚯떆�뙋�뿉 �꽔�쓣 �옉�꽦�옄 �젙蹂� 異붽�
	private String memId;
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public String getPostTag() {
		return postTag;
	}
	public void setPostTag(String postTag) {
		this.postTag = postTag;
	}
	public int getPostHit() {
		return postHit;
	}
	public void setPostHit(int postHit) {
		this.postHit = postHit;
	}
	public int getPostFavorit() {
		return postFavorit;
	}
	public void setPostFavorit(int postFavorit) {
		this.postFavorit = postFavorit;
	}
	public String getPostState() {
		return postState;
	}
	public void setPostState(String postState) {
		this.postState = postState;
	}
	public String getPostImg() {
		return postImg;
	}
	public void setPostImg(String postImg) {
		this.postImg = postImg;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	

	
	
	
	
}
