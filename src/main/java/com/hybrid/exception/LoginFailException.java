package com.hybrid.exception;

public class LoginFailException extends RuntimeException {

	public LoginFailException() {
		super();
	}
	
	public LoginFailException(String msg) {
		super(msg);
	}
}
