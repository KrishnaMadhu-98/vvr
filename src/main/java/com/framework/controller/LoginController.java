package com.framework.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.exception.ExceptionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.framework.bean.BookingListResEntity;
import com.framework.common.Constants;
import com.framework.dto.UserManagement;
import com.framework.form.BookingInfoForm;
import com.framework.form.LoginForm;
import com.framework.service.UserService;



@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	UserService userService;
	
	
	@RequestMapping(value = {"/admin","/admin/", "/admin/login"})
	public ModelAndView login( HttpServletRequest httpRequest) {
		MDC.put(Constants.ACTION, "login");
		logger.info("Entering");
		try {
			httpRequest.getSession().invalidate();
			logger.info("Exiting");
			return new ModelAndView("/admin/login");
		} catch (Exception exception) {
			logger.error(ExceptionUtils.getStackTrace(exception));
			logger.info("Exiting");
			throw exception;
		}
	}
	@PostMapping(value = "/authenticate")
	public ModelAndView authenticate(@ModelAttribute LoginForm loginForm, HttpServletRequest httpRequest) throws Exception {
		MDC.put(Constants.ACTION, "authenticate");
		logger.info("Entering");
		ModelMap model = new ModelMap();
		try {
			UserManagement user = userService.getUser(loginForm);
			if(user != null) {
				httpRequest.getSession().setAttribute("user", user);
				httpRequest.getSession().setAttribute("userName", user.getV_um_firstname());
				httpRequest.getSession().setAttribute("userType", user.getV_um_account_type());
				httpRequest.getSession().setAttribute("email", user.getV_um_email());
				httpRequest.getSession().setAttribute("usrId", user.getV_um_user_id());	
				httpRequest.getSession().setAttribute("userRole", user.getN_um_roleid());
				
				return new ModelAndView("redirect:/dashboard");
			}else {
				model.addAttribute("errorMsg", "Invalid Email or Password!");
			}
			logger.info("Exiting");
			return new ModelAndView("/admin/login", model);
		} catch (Exception exception) {
			logger.error(ExceptionUtils.getStackTrace(exception));
			logger.info("Exiting");
			throw exception;
		}
	}
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout( HttpServletRequest httpRequest) {
		MDC.put(Constants.ACTION, "logout");
		logger.info("Entering");
		try {
			httpRequest.getSession().invalidate();
			logger.info("Exiting");
			return new ModelAndView("/admin/login");
		} catch (Exception exception) {
			logger.error(ExceptionUtils.getStackTrace(exception));
			logger.info("Exiting");
			throw exception;
		}
	}
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView dashboard(HttpServletRequest httpRequest) throws Exception{
		ModelMap model = new ModelMap();
		try {
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String todate = dateFormat.format(date);
			model.addAttribute("toDate", todate);
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.DATE, -6);
			System.out.println("Date = "+ cal.getTime());
			String fromdate = dateFormat.format(cal.getTime());
			model.addAttribute("fromDate", fromdate);
			String currentDate = dateFormat.format(date);
			model.addAttribute("currentDate", currentDate);
			
			SimpleDateFormat DateFor = new SimpleDateFormat("MMM, dd yyyy HH:mm a");
		
			return new ModelAndView("redirect:/admin/getBookingInfo");
		} catch (Exception exception) {
			throw exception;
		}
	}
	
	@RequestMapping(value = "/admin/getBookingInfo", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView getRecentBookings(@ModelAttribute BookingInfoForm bookingform)	{
		ModelMap model = new ModelMap();
		String nextPage = "admin/recentBooking";
		String errorPage = "admin/recentBooking";
		try {
			
			BookingListResEntity BookingRes = userService.getRecentBooking(bookingform);
			model.addAttribute("bookingList", BookingRes.getFilingList());
			model.addAttribute("bookingform", bookingform);
			model.addAttribute("recordCount", BookingRes.getRecordCount());

			bookingform.setLimit(bookingform.getLimit() == 0 ? 10 : bookingform.getLimit());
			int pagination = BookingRes.getRecordCount() / bookingform.getLimit();
			int rem = BookingRes.getRecordCount() % bookingform.getLimit();
			if (rem != 0) {
				pagination = pagination + 1;
			}
			if ((bookingform.getSearchKeyword() == "" || bookingform.getSearchKeyword() == null)
					&& (bookingform.getFromDate() == "" || bookingform.getFromDate() == null)) {
				int pageNo = bookingform.getOffSet() == 0 ? 1 : bookingform.getOffSet();
				model.addAttribute("pagination", pagination);
				model.addAttribute("pageNo", pageNo);
			}
		} catch (Exception exception) {
			exception.printStackTrace();
			return new ModelAndView(errorPage, model);
		}
		return new ModelAndView(nextPage, model);
	}
	
	 @RequestMapping(value="/cancelBooking",method = RequestMethod.GET)

	public @ResponseBody String cancelBooking(@RequestParam long id) {
		String status=userService.cancelBooking(id);
	
			return status;
		}
}
