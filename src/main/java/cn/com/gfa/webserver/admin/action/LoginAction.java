package cn.com.gfa.webserver.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class LoginAction implements Action ,ServletRequestAware,ServletResponseAware{

	private String admin;
	private String pwd;
	
	private String tips;
	
	private HttpServletRequest request;
	
	private HttpServletResponse response;

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
	
	public String login() throws Exception {
		
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
	
	public String regist() throws Exception{
		
		ActionContext context = ActionContext.getContext();
		context.getSession().put("user", this.admin);
		this.setTips("Sir,regist account success.");
		return SUCCESS;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
}
