package com.framework.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.bean.BookingListResEntity;
import com.framework.config.PropertyFileConfig;
import com.framework.dao.impl.UsersDaoImpl;
import com.framework.dto.UserManagement;
import com.framework.form.BookingInfoForm;
import com.framework.form.LoginForm;

@Service
@Transactional
public class UserService {
	@Autowired
	UsersDaoImpl usersDaoImpl;

	public UserManagement getUser(LoginForm loginForm) throws Exception {
		return usersDaoImpl.getUserDetails(loginForm);
	}

	public String userInfo() throws Exception {
		
		final String SITEHEADING = PropertyFileConfig.getPropertyValues("Site_heading");
		final String REGMESSAGE = PropertyFileConfig.getPropertyValues("reset.password.message.english");
		final String  REGSUBJECT= PropertyFileConfig.getPropertyValues("reset.password.subject.english");

		/*
		 * TtMailQueueDetails ttMailQueueDetails =
		 * mailQueueService.saveMailQueue(SITEHEADING, REGSUBJECT, "455", REGMESSAGE,
		 * "eng","valleyviewretreat@gmail.com", "Registration", 0, 1);
		 * mailQueueDao.save(ttMailQueueDetails);
		 */
		return null;
	}
	
	public BookingListResEntity getRecentBooking(BookingInfoForm bookingSearch) throws Exception {

		BookingListResEntity filingResEntity = usersDaoImpl.getRecentBooking(bookingSearch);
	
		return filingResEntity;
		}
	
	public String cancelBooking(long id) {
		return usersDaoImpl.cancelBooking(id);
	}
	
}
