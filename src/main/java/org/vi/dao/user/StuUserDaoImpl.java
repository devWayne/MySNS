package org.vi.dao.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.vi.bean.user.StuUser;

@Repository
public class StuUserDaoImpl implements StuUserDao{
	
	private String LOGINCHECK="loginCheck";	
	
	private String USERREG="userReg";
	
	private String SELUSER="selUser";
	
	@Autowired  
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public String loginCheck(StuUser stuUser) throws Exception {
		
		return sqlSessionTemplate.selectOne(LOGINCHECK, stuUser);
	}

	@Override
	public void userReg(StuUser stuUser) throws Exception {
		sqlSessionTemplate.insert(USERREG,stuUser);
		
	}

	@Override
	public StuUser selUser(String loginName) throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne(SELUSER, loginName);
	}

}
