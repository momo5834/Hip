package com.web.hip.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Member {
	private String id;
	private String password;
	private String name;
	private String email;
	private String tel;
	private String addr;
	private Date reg_date;
}
