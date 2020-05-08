package com.douzone.codingvirus19.vo;

public class ChatMessageVo {
	private String user;
	private String message;
	private String group_no;
	
	public ChatMessageVo() {
		
	}
	
	public ChatMessageVo(String message, String user, String group_no) {
		this.message = message;
		this.user = user;
		this.group_no = group_no;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getGroup_no() {
		return group_no;
	}

	public void setGroup_no(String group_no) {
		this.group_no = group_no;
	}

	@Override
	public String toString() {
		return "ChatMessageVo [user=" + user + ", message=" + message + ", group_no=" + group_no + "]";
	}

}
