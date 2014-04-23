package org.vi.action;

/* 
 * 类名：BasicAction.java
 * 处理概要：用户登录、密码修改、用户信息修改处理
 * 日期                                                    作成者                                             说明
 * -----------------------------------------------
 * 2013-11-25        刘明峰                                           新规
 * -----------------------------------------------
 */

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BasicAction extends ActionSupport{

	/**
     * 序列化ID
     */
    private static final long serialVersionUID = 7290961423035687555L;
    
	/**
     * session
     */
    private Map<String, Object> sessionMap;
    
	/**
     * 处理概要：向session中存放数据
     * @param key 保存关键字
     * @param obj 保存对象
     */
	public void setSession(String key, Object obj){
		sessionMap=ActionContext.getContext().getSession();
		sessionMap.put(key, obj);
	}
	
	/**
     * 处理概要：向session中删除数据
     * @param key 保存关键字
     */
	public void removeSession(String key){
		sessionMap=ActionContext.getContext().getSession();
		sessionMap.remove(key);
	}
	
	/**
     * 处理概要：从session中取得数据
     * @param key 保存关键字
     * @return Object 保存对象
     */
	public Object getSession(String key){
		sessionMap=ActionContext.getContext().getSession();
		return sessionMap.get(key);
	}
}
