package com.framework.bean;

import java.util.List;

public class BookingListResEntity {
	private int recordCount;

	List<BookingInfoBean> filingList;

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public List<BookingInfoBean> getFilingList() {
		return filingList;
	}

	public void setFilingList(List<BookingInfoBean> filingList) {
		this.filingList = filingList;
	}
	
	
	

}
