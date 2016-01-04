package com.hybrid.command;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.hybrid.model.Member;

@JsonIgnoreProperties(value = "member")
public class MemberCommand {
	private long id;
	private String email;
	private String name;
	private String password;
	private Date registerDate;

	private Map<String, Object> errorMessage;
	
	public MemberCommand(){
		errorMessage = new HashMap<>();
	}
	
	public Map<String, Object> getErrorMessage(){
		return errorMessage;
	}
	
	public void validate() {

	}
	
	public boolean isValid(){
		if(errorMessage.size() > 0)
			return false;
		
		return true;
	}
public Member getMember(){
	Member m = new Member();
	m.setId(id);
	m.setEmail(email);
	m.setName(name);
	m.setPassword(password);
	m.setRegisterDate(registerDate);
	
	return m;
}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

}
