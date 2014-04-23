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
     * 序列化Id
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
	        if(url.contains("/user_logon.action")||url.contains("/user_login.action")){   //当为登录，或者转向首页的action，不会进行验证  
	         filterChain.doFilter(sRequest, sResponse);     
	         return ;  
	        }else {                     //当不是登录或者转向首页的所有对服务器的请求都会进行验证  
/*	         User user=(User)session.getAttribute("USER");  //需要在action中进行设置    
	         if(user==null){  
	             response.sendRedirect(contextPath+"/user_logon.action");   //如果没有登录，转向到首页  
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
