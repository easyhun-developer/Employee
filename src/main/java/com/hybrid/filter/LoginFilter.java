package com.hybrid.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Servlet Filter implementation class LoginFilter
 */
public class LoginFilter implements Filter {
	
	static Log log = LogFactory.getLog(LoginFilter.class);
    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		log.info("destory()...");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		log.info("doFilter()...");
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res  = (HttpServletResponse)response;
		
		HttpSession session = req.getSession();

		Boolean login = (Boolean) session.getAttribute("login");
		
		if(login != null && login == true)	//login true
			chain.doFilter(request, response);
		else {	//login false
			String context = req.getContextPath();
			res.sendRedirect(context + "/user/login.html");
		}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		log.info("init()...");
	}

}
