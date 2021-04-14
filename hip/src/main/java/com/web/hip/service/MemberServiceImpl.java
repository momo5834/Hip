package com.web.hip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.hip.dao.MemberDao;
import com.web.hip.model.Member;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao md;

	public Member select(String id) {
		return md.select(id);
	}

	public int insert(Member member) {
		return md.insert(member);
	}

	public int update(Member member) {
		return md.update(member);
	}

	public int delete(String id) {
		return md.delete(id);
	}
}
