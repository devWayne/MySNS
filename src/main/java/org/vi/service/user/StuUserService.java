package org.vi.service.user;

import org.vi.bean.user.StuUser;

public interface StuUserService {

	public String loginCheck(StuUser stuUser) throws Exception;
	
	public void userReg(StuUser stuUser) throws Exception;
	
	public StuUser selUser(String loginName) throws Exception;
}
