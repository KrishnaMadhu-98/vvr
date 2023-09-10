
package com.framework.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.framework.config.PropertyFileConfig;
import com.framework.form.BookingInfoForm;
import com.framework.service.BookingInfoService;
import com.framework.utils.BaseResponse;



@Controller
public class HomeController {

	private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);
	String className = "HomeController";

	@Autowired
	BookingInfoService bookingInfoService;

	@RequestMapping(value = { "/", "", "/home" })
	public ModelAndView home() {
		String methodName = "home";
		LOGGER.info("Entering Class:" + className + " & Method:" + methodName);
		ModelMap model = new ModelMap();
		try {
			String s = PropertyFileConfig.getPropertyValues("Site_heading");
			System.out.println("heading" + s);
			model.addAttribute("pageUrl", "home");

		} catch (Exception e) {
			e.printStackTrace();
		}
		LOGGER.info("Exiting Class:" + className + " & Method:" + methodName);
		return new ModelAndView("/web/WebHome", model);
	}
		
	@RequestMapping(value = { "/overView", "" })
	public ModelAndView overView() {
		String methodName = "overView";
		LOGGER.info("Entering Class:" + className + " & Method:" + methodName);
		try {

		} catch (Exception e) {
			e.printStackTrace();
		}
		LOGGER.info("Exiting Class:" + className + " & Method:" + methodName);
		return new ModelAndView("/web/PaymentAndPersonalDetails");

	}
	
	@RequestMapping(value = "/saveBookingDetails", method = RequestMethod.POST)
	public ResponseEntity<BaseResponse> saveBookingDetails(@RequestBody  BookingInfoForm bookingInfoForm, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		long count = bookingInfoService.getCount(bookingInfoForm);
		 if(count >= Long.parseLong(bookingInfoForm.getCountOfRooms())) {
			 BookingInfoForm BookingInfoForm1 = bookingInfoService.saveBookingDetails(bookingInfoForm);
				return ResponseEntity.ok(new BaseResponse(200, "saved"));
		  }
			
		
		return ResponseEntity.ok(new BaseResponse(400, "notAvailable"));

	}
	
	
	
	/*
	 * @RequestMapping(value = { "/", "","/home" }) public ModelAndView home() {
	 * String methodName = "home"; LOGGER.info("Entering Class:" + className +
	 * " & Method:" + methodName); ModelMap model = new ModelMap(); try { String s=
	 * PropertyFileConfig.getPropertyValues("Site_heading");
	 * System.out.println("heading"+s); model.addAttribute("pageUrl", "home");
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } LOGGER.info("Exiting Class:" +
	 * className + " & Method:" + methodName); return new
	 * ModelAndView("/web/home",model);
	 * 
	 * }
	 * 
	 * @RequestMapping(value = { "/bookingInfo", "" }) public ModelAndView
	 * bookingInfo() { String methodName = "home"; LOGGER.info("Entering Class:" +
	 * className + " & Method:" + methodName); ModelMap model = new ModelMap();
	 * 
	 * try { model.addAttribute("pageUrl", "bookingInfo");
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } LOGGER.info("Exiting Class:" +
	 * className + " & Method:" + methodName); return new
	 * ModelAndView("/web/webSiteGeneral",model);
	 * 
	 * }
	 */
	  @RequestMapping(value = { "/test", "" }) public ModelAndView test() { String
	  methodName = "home"; LOGGER.info("Entering Class:" + className + " & Method:"
	  + methodName); try {
	  
	 } catch (Exception e) { e.printStackTrace(); } LOGGER.info("Exiting Class:" +
	  className + " & Method:" + methodName); return new
	 ModelAndView("/web/test");
	  
	  }
	 /* 
	 * @RequestMapping(value = { "/personalInfo", "" }) public ModelAndView
	 * personalInfo() { String methodName = "home"; LOGGER.info("Entering Class:" +
	 * className + " & Method:" + methodName); ModelMap model = new ModelMap();
	 * 
	 * try { model.addAttribute("pageUrl", "personalInfopersonalInfo");
	 * 
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } LOGGER.info("Exiting Class:" +
	 * className + " & Method:" + methodName); return new
	 * ModelAndView("/web/bookingConfirmationPage",model);
	 * 
	 * }
	 */

	
	
	}
	
