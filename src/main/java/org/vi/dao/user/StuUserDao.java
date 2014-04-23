package org.vi.dao.user;

import org.vi.bean.user.StuUser;

public interface StuUserDao {

	public abstract String loginCheck(StuUser stuUser) throws Exception;
	
	public abstract void userReg(StuUser stuUser) throws Exception;
	
	public abstract StuUser selUser(String loginName) throws Exception;
}
