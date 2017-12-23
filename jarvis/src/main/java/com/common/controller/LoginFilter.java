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
 * @Description: ��¼������
 * @author dancer
 * @param  
 * @return 
 * @throws 
 * @data 2017��4��15������10:16:35
 */
public class LoginFilter implements Filter{

	public void destroy() {
		
		
	}

	public void doFilter(ServletRequest servletRequest,  
            ServletResponse servletResponse, FilterChain filterChain)  
            throws IOException, ServletException {  
        /** 
         * 1,doFilter�����ĵ�һ������ΪServletRequest���󡣴˶�����������ṩ�˶Խ������Ϣ������* 
         * �����ݡ�cookie��HTTP����ͷ������ȫ���ʡ��ڶ�������ΪServletResponse��ͨ���ڼ򵥵Ĺ�* 
         * �����к��Դ˲��������һ������ΪFilterChain���˲�����������servlet��JSPҳ�� 
         */ 
        HttpServletRequest request = (HttpServletRequest) servletRequest;  
        /** 
         * �������HTTP���󣬲�����Ҫ��������getHeader��getCookies����ServletRequest��* 
         * �޷��õ��ķ�������Ҫ�Ѵ�request�������HttpServletRequest 
         */ 
        HttpServletResponse response = (HttpServletResponse) servletResponse;  
        String currentURL = request.getRequestURI();  
        // ȡ�ø�Ŀ¼����Ӧ�ľ���·��:  
        String targetURL = currentURL.substring(currentURL.indexOf("/", 1),  
                currentURL.length());  
        // ��ȡ����ǰ�ļ������ڱȽ�  
        HttpSession session = request.getSession(false);  
        if (!"/home.jsp".equals(targetURL)) {// �жϵ�ǰҳ�Ƿ����ض����Ժ�ĵ�¼ҳ��ҳ�棬����ǾͲ���session���жϣ���ֹ������ѭ��  
            if (session == null || session.getAttribute("user") == null) {  
                // *�û���¼�Ժ����ֶ����session  
                System.out.println("request.getContextPath()="  
                        + request.getContextPath());  
                response.sendRedirect(request.getContextPath() + "/user/skip.html");  
                // ���sessionΪ�ձ�ʾ�û�û�е�¼���ض���login.jspҳ��  
                return;  
            }  
        }  
        // ����filter����������ִ��  
        filterChain.doFilter(request, response);  
        /** 
         * ����FilterChain�����doFilter������Filter�ӿڵ�doFilter����ȡһ��FilterChain������* Ϊ�� 
         * ��һ���������ڵ��ô˶����doFilter����ʱ��������һ����صĹ����������û����* 
         * һ����������servlet��JSPҳ���������servlet��JSPҳ�汻��� 
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

		String requestUrl = httpRequest.getScheme() // ��ǰ����ʹ�õ�Э��
				+ "://" + httpRequest.getServerName()// ��������ַ
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
