package org.vi.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter extends HttpServlet implements Filter {

	/**
     * ���л�Id
     */
    private static final long serialVersionUID = 2752136240426176798L;

	@Override
    public void doFilter(ServletRequest sRequest, ServletResponse sResponse,
            FilterChain filterChain) throws IOException, ServletException {
	    // TODO Auto-generated method stub
		  HttpServletRequest request = (HttpServletRequest) sRequest;        
	        HttpServletResponse response = (HttpServletResponse) sResponse;        
	        HttpSession session = request.getSession();        
	        String url=request.getServletPath();    
	        String contextPath=request.getContextPath();    
	        if(url.equals("")) url+="/";        
	        if(url.contains("/user_logon.action")||url.contains("/user_login.action")){   //��Ϊ��¼������ת����ҳ��action�����������֤  
	         filterChain.doFilter(sRequest, sResponse);     
	         return ;  
	        }else {                     //�����ǵ�¼����ת����ҳ�����жԷ����������󶼻������֤  
/*	         User user=(User)session.getAttribute("USER");  //��Ҫ��action�н�������    
	         if(user==null){  
	             response.sendRedirect(contextPath+"/user_logon.action");   //���û�е�¼��ת����ҳ  
	             return;  
	         }  */
	        }  
	          filterChain.doFilter(sRequest, sResponse); 
    }

	@Override
    public void init(FilterConfig arg0) throws ServletException {
	    // TODO Auto-generated method stub
	    
    }

}
