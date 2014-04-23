package org.vi.service.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.vi.bean.notice.Notice;
import org.vi.dao.notice.NoticeDao;

@Service
@Transactional(rollbackFor=Exception.class)
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public void newNotice(Notice notice) throws Exception {
		noticeDao.newNotice(notice);
		
	}

}
