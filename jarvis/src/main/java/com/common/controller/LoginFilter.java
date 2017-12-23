package com.common.controller;

import java.io.IOException;  

import javax.servlet.Filter;  
import javax.servlet.FilterChain;  
import javax.servlet.FilterConfig;  
import javax.servlet.ServletException;  
import javax.servlet.ServletRequest;  
import javax.servlet.ServletResponse;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  


/**
 * 
 * @Description: 登录过滤器
 * @author dancer
 * @param  
 * @return 
 * @throws 
 * @data 2017年4月15日下午10:16:35
 */
public class LoginFilter implements Filter{

	public void destroy() {
		
		
	}

	public void doFilter(ServletRequest servletRequest,  
            ServletResponse servletResponse, FilterChain filterChain)  
            throws IOException, ServletException {  
        /** 
         * 1,doFilter方法的第一个参数为ServletRequest对象。此对象给过滤器提供了对进入的信息（包括* 
         * 表单数据、cookie和HTTP请求头）的完全访问。第二个参数为ServletResponse，通常在简单的过* 
         * 滤器中忽略此参数。最后一个参数为FilterChain，此参数用来调用servlet或JSP页。 
         */ 
        HttpServletRequest request = (HttpServletRequest) servletRequest;  
        /** 
         * 如果处理HTTP请求，并且需要访问诸如getHeader或getCookies等在ServletRequest中* 
         * 无法得到的方法，就要把此request对象构造成HttpServletRequest 
         */ 
        HttpServletResponse response = (HttpServletResponse) servletResponse;  
        String currentURL = request.getRequestURI();  
        // 取得根目录所对应的绝对路径:  
        String targetURL = currentURL.substring(currentURL.indexOf("/", 1),  
                currentURL.length());  
        // 截取到当前文件名用于比较  
        HttpSession session = request.getSession(false);  
        if (!"/home.jsp".equals(targetURL)) {// 判断当前页是否是重定向以后的登录页面页面，如果是就不做session的判断，防止出现死循环  
            if (session == null || session.getAttribute("user") == null) {  
                // *用户登录以后需手动添加session  
                System.out.println("request.getContextPath()="  
                        + request.getContextPath());  
                response.sendRedirect(request.getContextPath() + "/user/skip.html");  
                // 如果session为空表示用户没有登录就重定向到login.jsp页面  
                return;  
            }  
        }  
        // 加入filter链继续向下执行  
        filterChain.doFilter(request, response);  
        /** 
         * 调用FilterChain对象的doFilter方法。Filter接口的doFilter方法取一个FilterChain对象作* 为它 
         * 的一个参数。在调用此对象的doFilter方法时，激活下一个相关的过滤器。如果没有另* 
         * 一个过滤器与servlet或JSP页面关联，则servlet或JSP页面被激活。 
         */ 
    }  

	

	/*public void doFilter(ServletRequest servletRequest,ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		if (!(servletRequest instanceof HttpServletRequest) || !(servletResponse instanceof HttpServletResponse)) {
			throw new ServletException("OncePerRequestFilter just supports HTTP requests");
		}
		HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;
		HttpServletResponse httpResponse = (HttpServletResponse) servletResponse;
		HttpSession session = httpRequest.getSession(true);

		String requestUrl = httpRequest.getScheme() // 当前链接使用的协议
				+ "://" + httpRequest.getServerName()// 服务器地址
				+ ":" + httpRequest.getServerPort();

		String contextPath = httpRequest.getContextPath();
		StringBuffer url = httpRequest.getRequestURL();

		if (url.toString().indexOf("login.html") >= 0
				|| url.toString().indexOf("validate.htm") >= 0
				|| url.toString().indexOf("changeLng.htm") >= 0
				|| url.toString().toLowerCase().indexOf("css") > 0
				|| url.toString().toLowerCase().indexOf("js") > 0
				|| url.toString().toLowerCase().indexOf("bmp") > 0
				|| url.toString().toLowerCase().indexOf("gif") > 0
				|| url.toString().toLowerCase().indexOf("png") > 0
				|| url.toString().toLowerCase().indexOf("jpg") > 0) {
			filterChain.doFilter(servletRequest, servletResponse);
			return;
		}

		Object user = httpRequest.getSession().getAttribute("BaseUser");

		if (user == null) {
			httpResponse.sendRedirect(contextPath + "/user/login.html");
			return;
		} else {
			filterChain.doFilter(servletRequest, servletResponse);
		}
	}*/
	
	
	
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
