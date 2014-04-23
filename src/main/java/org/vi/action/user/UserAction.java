package org.vi.action.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.vi.action.BasicAction;
import org.vi.bean.user.StuUser;
import org.vi.service.user.StuUserService;

@Controller
@Scope("request")
public class UserAction extends BasicAction{
  
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4854407157870939321L;

	private StuUser stuUser;
	
	@Autowired
	private StuUserService stuUserService;
	
	public String login() throws Exception{
		stuUser=stuUserService.selUser(stuUser.getStu_loginName());
		setSession("USER",stuUser);
		return "login_success";		
	}
	
	public String logout() throws Exception{
		removeSession("USER");
		return "logout_success";
	}
	
	public String register() throws Exception{
		stuUserService.userReg(stuUser);
		setSession("USER",stuUser);
		return "register_success";
	}
	
	public void validateLogin() throws Exception{
		if(stuUser.getStu_loginName()==null || "".equals(stuUser.getStu_loginName().trim())) {
			this.addFieldError("user.loginName", "用户名为空");
		} else if(stuUser.getStu_password()==null || "".equals(stuUser.getStu_password().trim())) {
			this.addFieldError("user.password", this.getText("passwordBlank"));
		} else {
			String loginName=stuUserService.loginCheck(stuUser);
			if(!(stuUser.getStu_loginName().equals(loginName)))
			{
				this.addFieldError("user.loginName","密码错误");
			}
		}
	}
	public StuUser getStuUser() {
		return stuUser;
	}

	public void setStuUser(StuUser stuUser) {
		this.stuUser = stuUser;
	}

}
