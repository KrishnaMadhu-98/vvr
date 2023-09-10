package com.framework.utils;

public class BaseResponse {

	public BaseResponse() {
	}

	public BaseResponse(Integer code, String message) {
		this.code = code;
		this.message = message;
	}
	
	public BaseResponse(Integer code, String message,String token) {
		this.code = code;
		this.message = message;
		this.token=token;
	}

	protected Integer code;
	protected String message;
	protected String token ;

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
	

}
