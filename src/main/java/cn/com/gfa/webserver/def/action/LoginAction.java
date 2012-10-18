package cn.com.gfa.webserver.def.action;

import com.opensymphony.xwork2.ActionContext;

public class LoginAction{

	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws Exception {
		if (getUsername().equals("default") && getPassword().equals("default")) {

			ActionContext.getContext().getSession().put("user", username);
			return "success";
		} else {
			return "error";
		}
	}
}
