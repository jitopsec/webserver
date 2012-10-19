package cn.com.gfa.webserver.def.action;

public class DefaultActionClass {
	
	public String execute() throws Exception {
		
		System.out.println("invoke default action class");
		
		return "success";
		
	}

}
