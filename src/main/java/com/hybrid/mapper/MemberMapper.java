package com.hybrid.mapper;

import java.util.List;
import java.util.Map;

import com.hybrid.model.Member;

public interface MemberMapper {
	
	List<Member> selectAll();
	Member selectByEmailAndPassword(Map<String,Object> emailAndPassword);
	void insert(Member m);
	void update(Member m);
	void delete(Member m);
}
