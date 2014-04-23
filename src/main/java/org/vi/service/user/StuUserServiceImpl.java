package org.vi.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.vi.bean.user.StuUser;
import org.vi.dao.user.StuUserDao;

@Service
@Transactional(rollbackFor=Exception.class)
public class StuUserServiceImpl implements StuUserService{
	
	@Autowired
	private StuUserDao stuUserDao;

	@Override
	public String loginCheck(StuUser stuUser) throws Exception {
		// TODO Auto-generated method stub
		return stuUserDao.loginCheck(stuUser);
	}

	@Override
	public void userReg(StuUser stuUser) throws Exception {
		stuUserDao.userReg(stuUser);
	}

	@Override
	public StuUser selUser(String loginName) throws Exception {
		return stuUserDao.selUser(loginName);
	}

	
}
