package com.framework.config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

@Component
public class AuthRequestFilter extends OncePerRequestFilter {

	public static final String[] whiteListURIs = new String[] {"/", "","/home","/admin","/admin/login", "/login", "/logout", "/authenticate","/hotel","/hotel/img","/hotel/css", "/images","/fonts", "/css" , "/js","/bookingInfo"
			,"/test","/getBookingInfo","/personalInfo","/saveBookingDetails","dashboard","/mailQueue","/testController","/cancelBooking","/newVersion","/newVersion_overView","/test2","/overView","/js_file","/css_file","/checkAvailablity"};
	
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		try {
			String requestURL = request.getRequestURI().substring(request.getContextPath().length());
			String pathVal = "";
			String requestURLArr[] = requestURL.split("/");
			if(requestURLArr.length >= 1) {
				pathVal = "/"+requestURLArr[1];
			}
			
			List<String> whiteList = new ArrayList<String>(Arrays.asList(whiteListURIs));
			
			if(whiteList.contains(pathVal)) {
				chain.doFilter(request, response);
			} else if (request.getSession().getAttribute("user") != null){
				chain.doFilter(request, response);
			}else {
				response.sendRedirect(request.getContextPath()+"/");
			}
			
		} catch (Exception e) {
			throw e;
		}
	}
	
}
