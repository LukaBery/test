package com.myspring.Onaju.board.review.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("reviewVO")
public class ReviewVO {

	private int review_num;
	private String u_id;
	private int h_code;
	private int room_code;
	private String review_star;
	private String review_content;
	private Date creDate;
	
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getH_code() {
		return h_code;
	}
	public void setH_code(int h_code) {
		this.h_code = h_code;
	}
	public int getRoom_code() {
		return room_code;
	}
	public void setRoom_code(int room_code) {
		this.room_code = room_code;
	}
	public String getReview_star() {
		return review_star;
	}
	public void setReview_star(String review_star) {
		this.review_star = review_star;
	}
	public Date getCreDate() {
		return creDate;
	}
	
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public void setCreDate(Date creDate) {
		this.creDate = creDate;
	}
}
