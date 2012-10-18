package cn.com.gfa.webserver.admin.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class LoginAction implements Action {

	private String admin;
	private String pwd;
	
	private String tips;

	public String getUsername() {
		return this.admin;
	}

	public void setUsername(String username) {
		this.admin = username;
	}

	public String getPassword() {
		return this.pwd;
	}

	public void setPassword(String password) {
		this.pwd = password;
	}

	public String getTips() {
		return tips;
	}

	public void setTips(String tips) {
		this.tips = tips;
	}

	public String execute() throws Exception {
		
		ActionContext context = ActionContext.getContext();

		if (getUsername().equals("admin") && getPassword().equals("admin")) {
		
			Integer counter = (Integer)context.getApplication().get("counter");
			counter= (counter == null)?1:counter+1;
			context.getApplication().put("counter", counter);
			context.getSession().put("user", this.admin);
			context.put("notice", "Note:"+this.admin+" login success.");
			this.setTips("Sir,Success login admin.");
			return SUCCESS;
		} else {
			context.put("notice", "Note:"+this.admin+" login error.");
			return ERROR;
		}
	}
}
