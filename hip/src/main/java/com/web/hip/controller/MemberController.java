package com.web.hip.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.hip.model.Member;
import com.web.hip.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	
	@RequestMapping("loginForm")
	public String loginForm() {
		return "/member/loginForm";
	}
	
	@RequestMapping("login")
	public String login(Model model, HttpSession session,Member member) {
		int result=0;
		Member mem=ms.select(member.getId());
		if (mem==null) {
			result=-1;
		} else if (mem.getPassword().equals(member.getPassword())) {
			result=1;
			session.setAttribute("id", member.getId());
		}
		model.addAttribute("result", result);
		return "/member/login";
	}
	
	@RequestMapping("joinForm") 
		public String joinForm() {
			return "/member/joinForm";
		}
	
	@RequestMapping(value="idChk", produces="text/html;charset=utf-8")
	@ResponseBody
	public String idChk(String id) {
		String msg="";
		Member member=ms.select(id);
		if (member==null) msg="사용 가능한 아이디입니다!";
		else msg="이미 사용중인 아이디입니다!";
		return msg;
	}
	
	@RequestMapping("join")
	public String join(Member member, Model model) {
		int result=0;
		Member mem=ms.select(member.getId());
		if (mem==null) {
			result=ms.insert(member);
		} else result=-1;
		model.addAttribute("result", result);
		return "/member/join";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "/member/logout";
	}
	
	@RequestMapping("memberinfo")
	public String memberinfo(Model model, HttpSession session) {
		String id=(String) session.getAttribute("id");
		Member member=ms.select(id);
		model.addAttribute("member", member);
		return "/member/memberinfo";
	}
	
	@RequestMapping("UpdateForm")
	public String memberUpdate(Model model, String id) {
		Member member=ms.select(id);
		model.addAttribute("member", member);
		return "/member/UpdateForm";
	}
	
	@RequestMapping("update")
	public String update(Member member, Model model) {
		int result=ms.update(member);
		model.addAttribute("result", result);
		return "/member/update";
	}
	
	@RequestMapping("memberDelete")
	public String memberDelete(Model model, String id, HttpSession session) {
		int result=ms.delete(id);
		session.invalidate();
		model.addAttribute("result", result);
		return "/member/memberDelete";
	}
}
