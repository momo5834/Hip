package com.web.hip.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.hip.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired
	private SqlSessionTemplate sst;

	public Member select(String id) {
		return sst.selectOne("memberns.select", id);
	}

	public int insert(Member member) {
		return sst.insert("memberns.insert", member);
	}

	public int update(Member member) {
		return sst.update("memberns.update", member);
	}

	public int delete(String id) {
		return sst.delete("memberns.delete", id);
	}
}
