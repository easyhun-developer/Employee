package com.hybrid.model.busapi;

public class MsgHeader {
	String headerCd;
	String headerMsg;
	Integer itemCount;
	
	public String getHeaderCd() {
		return headerCd;
	}
	public void setHeaderCd(String headerCd) {
		this.headerCd = headerCd;
	}
	public String getHeaderMsg() {
		return headerMsg;
	}
	public void setHeaderMsg(String headerMsg) {
		this.headerMsg = headerMsg;
	}
	public Integer getItemCount() {
		return itemCount;
	}
	public void setItemCount(Integer itemCount) {
		this.itemCount = itemCount;
	}
}
