package org.vi.dao.notice;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.vi.bean.notice.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao{

	private final String NEWNOTICE="newNotice";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void newNotice(Notice notice) throws Exception {
		sqlSessionTemplate.insert(NEWNOTICE);
		
	}
}
