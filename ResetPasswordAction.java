package com.internousdev.orion.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ResetPasswordAction extends ActionSupport implements SessionAware{
	private int loggedln;
	private Map<String, Object>session;

	public String execute(){
//ログインIDを未入力状態にしてる
		if (loggedln != 1) {
			session.remove("userIdForResetPassword");
		}
		return SUCCESS;
	}
	public int getLoggedln(){
		return loggedln;
	}
	public void setLoggedln(int loggedln){
		this.loggedln=loggedln;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
