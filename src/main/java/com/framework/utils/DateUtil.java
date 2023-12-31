package  com.framework.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.Date;

public class DateUtil {

	public static java.sql.Date getCurrentDay() {
		return new java.sql.Date(new Date().getTime());
	}
	
	public static java.sql.Date parseToSqlDate(String dateVal) throws ParseException {
		SimpleDateFormat dateFmt = new SimpleDateFormat("yyyy-MM-dd");
		return new java.sql.Date(dateFmt.parse(dateVal).getTime());
	}
	
	public static Date atStartOfDay(Date date) {
		LocalDateTime localDateTime = dateToLocalDateTime(date);
		LocalDateTime startOfDay = localDateTime.with(LocalTime.MIN);
		return localDateTimeToDate(startOfDay);
	}

	public static Date atEndOfDay(Date date) {
		LocalDateTime localDateTime = dateToLocalDateTime(date);
		LocalDateTime endOfDay = localDateTime.with(LocalTime.MAX);
		return localDateTimeToDate(endOfDay);
	}

	private static LocalDateTime dateToLocalDateTime(Date date) {
		return LocalDateTime.ofInstant(date.toInstant(), ZoneId.systemDefault());
	}

	private static Date localDateTimeToDate(LocalDateTime localDateTime) {
		return Date.from(localDateTime.atZone(ZoneId.systemDefault()).toInstant());
	}
	
	public static  String parseToDate(String dateVal) throws ParseException {
		SimpleDateFormat inFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat outFormat = new SimpleDateFormat("MM/dd/yyyy");
		Date s=inFormat.parse(dateVal);
		
		return outFormat.format(s) ;
	}

	public static void main(String[] args) {
		System.out.println(atStartOfDay(new Date()));
		System.out.println(atEndOfDay(new Date()));
		System.out.println(getCurrentDay());
	}

}
