package com.web.hip.model;

import lombok.Data;

@Data
public class Product {
	private String pnum;
	private String pname;
	private int price;
	private String pcontents;
	private String fileName;
	private int pcount;
	
	private int startRow;
	private int endRow;
}
