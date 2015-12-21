package com.hybrid.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.hybrid.mapper.DeptMapper;
import com.hybrid.mapper.MemberMapper;
import com.hybrid.model.Dept;
import com.hybrid.model.Member;

public class MemberDao {
	
	MemberMapper memberMapper;
	
	public void setMemberMapper(MemberMapper mapper){
		this.memberMapper = mapper;
	}
	
	public List<Member> selectAll(){
		
		return null;
	}
	public Member selectByEmailAndPassword(String email, String password){
		Map<String, Object> emailAndPassword = new HashMap<String,Object>();
		emailAndPassword.put("email", email);
		emailAndPassword.put("password", password);
	return memberMapper.selectByEmailAndPassword(emailAndPassword);
	}
	public void insert(Member m){
		
	}
	public void update(Member m){
		
	}
	public void delete(Member m){
		
	}
}