package com.web.hip.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {	
	@RequestMapping("main")
	public String main(HttpSession session) {
		String id=(String) session.getAttribute("id");
		return "main";
	}
}
