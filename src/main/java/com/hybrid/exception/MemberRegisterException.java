package com.hybrid.exception;

public class MemberRegisterException extends RuntimeException {

	public MemberRegisterException() {
		super();
	}
	
	public MemberRegisterException(String msg) {
		super(msg);
	}
}
