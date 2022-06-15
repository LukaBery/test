package com.myspring.Onaju.admin.adminCommon.paging;

import org.springframework.stereotype.Component;

// Criteria 검색의 기준을 의미
// pageNum, amount 값을 전달하는 용도
// 기본 값으로 1페이지와 10개의 개수를 지정
@Component("criteria")
public class Criteria {
	private int pageNum;
	private int amount;
	private String join_startDate;
	private String join_endDate;
	private String h_id2;
	private String h_name;
	private String h_sellerNum;
	private String h_del_yn;
	private String hostInfo_name;
	private String del_yn;
	private String roadAddress;
	
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Criteria () {
		this(1,10);
	}
	
	public Criteria (int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	public String getJoin_startDate() {
		return join_startDate;
	}
	public void setJoin_startDate(String join_startDate) {
		this.join_startDate = join_startDate;
	}
	public String getJoin_endDate() {
		return join_endDate;
	}
	public void setJoin_endDate(String join_endDate) {
		this.join_endDate = join_endDate;
	}
	public String getH_id2() {
		return h_id2;
	}
	public void setH_id2(String h_id2) {
		this.h_id2 = h_id2;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getH_sellerNum() {
		return h_sellerNum;
	}
	public void setH_sellerNum(String h_sellerNum) {
		this.h_sellerNum = h_sellerNum;
	}
	public String getH_del_yn() {
		return h_del_yn;
	}
	public void setH_del_yn(String h_del_yn) {
		this.h_del_yn = h_del_yn;
	}
	public String getHostInfo_name() {
		return hostInfo_name;
	}
	public void setHostInfo_name(String hostInfo_name) {
		this.hostInfo_name = hostInfo_name;
	}
	public String getDel_yn() {
		return del_yn;
	}
	public void setDel_yn(String del_yn) {
		this.del_yn = del_yn;
	}
	public String getRoadAddress() {
		return roadAddress;
	}
	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}
	
	
}
