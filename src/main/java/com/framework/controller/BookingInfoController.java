package com.framework.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.exception.ExceptionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.framework.common.Constants;
import com.framework.dto.UserManagement;
import com.framework.form.LoginForm;
import com.framework.service.UserService;

@Controller
public class BookingInfoController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	UserService userService;
	@PostMapping(value = "/checkMail")
	public ModelAndView authenticate(@ModelAttribute LoginForm loginForm, HttpServletRequest httpRequest) throws Exception {
		MDC.put(Constants.ACTION, "authenticate");
		logger.info("Entering");
		ModelMap model = new ModelMap();
		try {
         String user = userService.userInfo();
			/*
			 * if(user != null) { httpRequest.getSession().setAttribute("user", user);
			 * httpRequest.getSession().setAttribute("userName", user.getV_um_firstname());
			 * httpRequest.getSession().setAttribute("userType",
			 * user.getV_um_account_type()); httpRequest.getSession().setAttribute("email",
			 * user.getV_um_email()); httpRequest.getSession().setAttribute("usrId",
			 * user.getV_um_user_id()); httpRequest.getSession().setAttribute("userRole",
			 * user.getN_um_roleid());
			 * 
			 * return new ModelAndView("redirect:/dashboard"); }else {
			 * model.addAttribute("errorMsg", "Invalid Email or Password!"); }
			 */
			logger.info("Exiting");
			return new ModelAndView("/admin/login", model);
		} catch (Exception exception) {
			logger.error(ExceptionUtils.getStackTrace(exception));
			logger.info("Exiting");
			throw exception;
		}
	}
}
