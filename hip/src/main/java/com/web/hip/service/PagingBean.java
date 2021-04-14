package com.web.hip.service;

import lombok.Data;

@Data
public class PagingBean {
	private int currentPage;
	private int total;
	private int totalPage;
	private int rowPerPage;
	private int pagePerBlock=10;
	private int startPage;
	private int endPage;
	public PagingBean(int currentPage, int total, int rowPerPage) {
		this.currentPage=currentPage;
		this.total=total;
		this.rowPerPage=rowPerPage;
		
		totalPage=(int) Math.ceil((double)total/rowPerPage);
		startPage=currentPage-(currentPage-1)%pagePerBlock;
		endPage=startPage+pagePerBlock-1;
		if (endPage > totalPage) endPage=totalPage;
	}
}
