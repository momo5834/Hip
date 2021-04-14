package com.web.hip.dao;

import com.web.hip.model.Member;

public interface MemberDao {

	Member select(String id);

	int insert(Member member);

	int update(Member member);

	int delete(String id);

}
