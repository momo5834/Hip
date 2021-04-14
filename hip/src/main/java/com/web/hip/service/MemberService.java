package com.web.hip.service;

import com.web.hip.model.Member;

public interface MemberService {

	Member select(String id);

	int insert(Member member);

	int update(Member member);

	int delete(String id);

}
