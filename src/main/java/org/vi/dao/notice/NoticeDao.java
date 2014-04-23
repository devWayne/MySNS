package org.vi.dao.notice;

import org.vi.bean.notice.Notice;

public interface NoticeDao {

	public abstract void newNotice(Notice notice) throws Exception;
}
