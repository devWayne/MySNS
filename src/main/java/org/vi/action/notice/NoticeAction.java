package org.vi.action.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.vi.action.BasicAction;
import org.vi.bean.notice.Notice;
import org.vi.bean.user.StuUser;
import org.vi.service.notice.NoticeService;

@Controller
@Scope("request")
public class NoticeAction extends BasicAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 9105699907021281475L;

	/**
	 * 消息bean
	 */
	private Notice notice;
	
	
	@Autowired
	private NoticeService noticeService;
	
	/**
	 * 学生用户Bean
	 */
	private StuUser stuUser;
	
	/**
	 * 处理该要：新建消息ActioN
	 * @return
	 * @throws Exception
	 */
	public String newNotice() throws Exception{
		stuUser=(StuUser)getSession("USER");
		notice.setNotice_au(stuUser.getStu_name());
		noticeService.newNotice(notice);
		return "newNotice_success";
	}

	/**
	 * @return the notice
	 */
	public Notice getNotice() {
		return notice;
	}

	/**
	 * @param notice the notice to set
	 */
	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	/**
	 * @return the stuUser
	 */
	public StuUser getStuUser() {
		return stuUser;
	}

	/**
	 * @param stuUser the stuUser to set
	 */
	public void setStuUser(StuUser stuUser) {
		this.stuUser = stuUser;
	}
	
	
	
}
