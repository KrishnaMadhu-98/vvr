package com.framework.dao.impl;


import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.framework.config.PropertyFileConfig;

import com.framework.form.BookingInfoForm;
import com.framework.service.EmailSenderService;

@Component
public class BookingInfoDaoImpl {
	@Autowired
	JdbcTemplate jdbcTempalte;
	@Autowired
	private EmailSenderService senderService;
	public BookingInfoForm saveBookingDetails(BookingInfoForm formDetails) throws Exception {
		try {
			String fd = formDetails.getFromDate();
			String td = formDetails.getToDate();
			DateFormat formatter;
			Date dateFormat;
			Date dateFormat1;
			formatter = new SimpleDateFormat("MM/dd/yyyy");
			dateFormat = (Date) formatter.parse(fd);
			dateFormat1 = (Date) formatter.parse(td);
			java.text.SimpleDateFormat dateFormatter = new java.text.SimpleDateFormat(
					"yyyy-MM-dd");
			java.sql.Date fromdate = new java.sql.Date(dateFormat.getTime());
			java.sql.Date todate = new java.sql.Date(dateFormat1.getTime());


			long bookingId =0,userId =0;
			Date dt=new Date(formDetails.getFromDate());
			StringBuffer queryString = new StringBuffer("INSERT INTO hotelsystem.tt_booking_info " + 
					"			(selected_from_date, selected_to_date, rooms, adults, child, created_by, created_date, modified_by, modified_date, active) " + 
					"			VALUES(?, ?, ?, ?, ?, ?, now(), ?, now(), true) returning id");			
		

			 bookingId = jdbcTempalte.queryForObject(queryString.toString(), new Object[] {fromdate,todate, formDetails.getCountOfRooms(),formDetails.getCountOfAdults(),formDetails.getCountOfChild(), 1,1},Integer.class);
			if(bookingId !=0 ) {
				StringBuffer queryString1 = new StringBuffer("INSERT INTO hotelsystem.tt_user " + 
						"(booking_id, first_name, last_name, email, phone, address, created_by, created_date, modified_by, modified_date, active) " + 
						"VALUES(?,?, ?,?, ?, ?, ?, now(), ?, now(), true) returning id");			
			

				 userId = jdbcTempalte.queryForObject(queryString1.toString(), new Object[] { bookingId, formDetails.getFirstName(),
						formDetails.getLastName(),formDetails.getEmail(),formDetails.getPhone(),formDetails.getAddress(),1,1},Integer.class);
				
			}
			if(userId !=0 ) {
				String voucherNum =getVoucherNum(userId);
				StringBuffer queryString3 = new StringBuffer("insert into hotelsystem.tt_user_transaction ( user_id,"
						+ " booking_id, voucher_no, voucher_date, total_amount, paid_amount,bal_amount,  "
						+ " payment_method, payment_gateway, pg_status, created_by, created_date, "
						+ "modified_by, modified_date, active,discount_amount, coupon_code,advance_amount,final_amount,advance_refid,final_refid) "
						+ "values (?, ?, ? , now(), ?, ? ,?, 'PG', 'aut', 'INITIATED', ? , now(), ? , now(), true,?,?,0,0,'','')");

				jdbcTempalte.update(queryString3.toString(), userId, bookingId,
						voucherNum, Double.parseDouble(formDetails.getAmount()), 0, Double.parseDouble(formDetails.getAmount()), userId, userId,0, "");
					
			}
			if(userId !=0 ) {
				 String SITEHEADING = PropertyFileConfig.getPropertyValues("Site_heading");
				 String REGMESSAGE = PropertyFileConfig.getPropertyValues("booking.message.english");
				 String  REGSUBJECT= PropertyFileConfig.getPropertyValues("booking.subject.english");
				 //String REGTEMP = PropertyFileConfig.getPropertyValues("email_template_english");
				 String REGTEMP = PropertyFileConfig.getPropertyValues("email_booking_template_english");				 
				 
				 REGTEMP = REGTEMP.replaceAll("<<UserName>>", formDetails.getFirstName()+" "+formDetails.getLastName());
				 REGTEMP = REGTEMP.replaceAll("<<Main Message>>", REGMESSAGE);
						
					senderService.sendSimpleEmail(formDetails.getEmail(),							
							REGSUBJECT,REGTEMP);

				
			}
			
			
			
			return formDetails;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	
	  public static String getVoucherNum(long userId) { return "V" +
			  userId + "T" + System.currentTimeMillis(); }
	  
	  public long getCount(BookingInfoForm formDetails) throws ParseException {
		  long roomCount=0;
		  long blockingRoomCount=4;
		  String fd = formDetails.getFromDate();
			String td = formDetails.getFromDate();
			DateFormat formatter;
			Date dateFormat;
			Date dateFormat1;
			formatter = new SimpleDateFormat("MM/dd/yyyy");
			java.sql.Date fromdate,todate;
			if(formDetails.getAmount() !=null) {
				dateFormat = (Date) formatter.parse(fd);
				dateFormat1 = (Date) formatter.parse(td);
				fromdate = new java.sql.Date(dateFormat.getTime());
				 todate = new java.sql.Date(dateFormat1.getTime());
			}
			else {
				java.text.SimpleDateFormat dateFormatter = new java.text.SimpleDateFormat(
						"yyyy-MM-dd");
				 fromdate = new java.sql.Date(dateFormatter.parse(fd).getTime());
				 todate = new java.sql.Date(dateFormatter.parse(td).getTime());
			}
			
			

				  StringBuffer queryString1 = new StringBuffer("select case when count(rooms) != 0 then 4-sum(rooms::integer) else 4 end as count from hotelsystem.tt_blocking_info tbi where active =true and  selected_to_date >=?");			
				

				  blockingRoomCount = jdbcTempalte.queryForObject(queryString1.toString(), new Object[] {todate},Integer.class);
				
					
	  if(blockingRoomCount >0) {
		  StringBuffer queryString = new StringBuffer("select case when count(rooms) != 0 then sum(rooms::integer) else 0 end as count from hotelsystem.tt_booking_info tbi where active =true and  selected_to_date >=?");			
		

		  roomCount = jdbcTempalte.queryForObject(queryString.toString(), new Object[] {todate},Integer.class);
	  }
		  long availableRommCount = (blockingRoomCount -roomCount) ;
	
		 
		  return availableRommCount;
	  }
	 
	  public String saveBlockDetails(BookingInfoForm formDetails) throws Exception {
			try {
				String fd = formDetails.getFromDate();
				String td = formDetails.getToDate();
			
			  java.text.SimpleDateFormat  dateFormatter = new java.text.SimpleDateFormat( "yyyy-MM-dd"); 
			 
			  java.sql.Date	  fromdate = new java.sql.Date( dateFormatter.parse(fd).getTime());
			  java.sql.Date	  enddate = new java.sql.Date( dateFormatter.parse(td).getTime());
					 

				long bookingId =0,userId =0;
				//Date dt=new Date(formDetails.getFromDate());
				StringBuffer queryString = new StringBuffer("INSERT INTO hotelsystem.tt_blocking_info " + 
						"			(selected_from_date, selected_to_date, rooms, created_by, created_date, modified_by, modified_date, active) " + 
						"			VALUES(?, ?, ?, ?, now(), ?, now(), true) returning id");			
			

				 bookingId = jdbcTempalte.queryForObject(queryString.toString(), new Object[] {fromdate,enddate, formDetails.getCountOfRooms(),1,1},Integer.class);
			
				
				
				return "updated";
			} catch (Exception e) {
				e.printStackTrace();
				throw e;
			}
		}
		
}
