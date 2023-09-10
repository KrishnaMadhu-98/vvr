package com.framework.utils;

import javax.servlet.http.HttpServletRequest;

//import com.framework.dto.TtUsers;

//import org.springframework.security.core.context.SecurityContextHolder;
//

public class SecurityCtxUtil {

//	public static Long getUserId() {
//		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		if (principal instanceof CustomUserDetails) {
//			return ((CustomUserDetails) principal).getUserId();
//		}
//		return null;
//	}
//
//	public static String getToken() {
//		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		if (principal instanceof CustomUserDetails) {
//			return ((CustomUserDetails) principal).getJwtToken();
//		}
//		return null;
//	}
//
//	public static Long getFilingId() {
//		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		if (principal instanceof CustomUserDetails) {
//			return ((CustomUserDetails) principal).getFilingId();
//		}
//		return null;
//	}
	
	public static Long getUserId() {
		return 0l;
	}

	/*
	 * public static Long getUserId(HttpServletRequest httpRequest) { return
	 * ((TtUsers) httpRequest.getSession().getAttribute("user")).getId(); }
	 * 
	 * public static String getEmail(HttpServletRequest httpRequest) { return
	 * ((TtUsers) httpRequest.getSession().getAttribute("user")).getEmail(); }
	 */
	
	public static String getToken() {
		return null;
	}

	public static Long getFilingId() {
		return 0l;
	}

}
