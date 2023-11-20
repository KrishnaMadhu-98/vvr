package com.framework.service;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.dao.impl.BookingInfoDaoImpl;
import com.framework.form.BookingInfoForm;

@Service
public class BookingInfoService {
	
	@Autowired
	BookingInfoDaoImpl bookingInfoDaoImpl;
	
	public BookingInfoForm saveBookingDetails(BookingInfoForm formDetails) throws Exception {
		
			
		formDetails.setEmail(formDetails.getEmail().toLowerCase());
			
			BookingInfoForm bookingInfoForm = bookingInfoDaoImpl.saveBookingDetails(formDetails);

			
			return bookingInfoForm;
		

	}
	
	public long getCount(BookingInfoForm bookingInfoForm) throws ParseException {
		long count = bookingInfoDaoImpl.getCount(bookingInfoForm);
		return count;
	}

	public String saveBlockDetails(BookingInfoForm formDetails) throws Exception {		
					
		String BookingRes = bookingInfoDaoImpl.saveBlockDetails(formDetails);

			
			return BookingRes;
		

	}
}
