package org.vi.action;

/* 
 * ������BasicAction.java
 * �����Ҫ���û���¼�������޸ġ��û���Ϣ�޸Ĵ���
 * ����                                                    ������                                             ˵��
 * -----------------------------------------------
 * 2013-11-25        ������                                           �¹�
 * -----------------------------------------------
 */

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BasicAction extends ActionSupport{

	/**
     * ���л�ID
     */
    private static final long serialVersionUID = 7290961423035687555L;
    
	/**
     * session
     */
    private Map<String, Object> sessionMap;
    
	/**
     * �����Ҫ����session�д������
     * @param key ����ؼ���
     * @param obj �������
     */
	public void setSession(String key, Object obj){
		sessionMap=ActionContext.getContext().getSession();
		sessionMap.put(key, obj);
	}
	
	/**
     * �����Ҫ����session��ɾ������
     * @param key ����ؼ���
     */
	public void removeSession(String key){
		sessionMap=ActionContext.getContext().getSession();
		sessionMap.remove(key);
	}
	
	/**
     * �����Ҫ����session��ȡ������
     * @param key ����ؼ���
     * @return Object �������
     */
	public Object getSession(String key){
		sessionMap=ActionContext.getContext().getSession();
		return sessionMap.get(key);
	}
}
