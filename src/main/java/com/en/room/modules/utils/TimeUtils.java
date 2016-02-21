package com.en.room.modules.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class TimeUtils {
	static SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
	static Calendar cal = Calendar.getInstance();    
	public static int daysBetween(Date smdate,Date bdate) throws ParseException {    
        smdate=sdf.parse(sdf.format(smdate));  
        bdate=sdf.parse(sdf.format(bdate));  
        cal.setTime(smdate);    
        long time1 = cal.getTimeInMillis();                 
        cal.setTime(bdate);    
        long time2 = cal.getTimeInMillis();         
        long between_days=(time2-time1)/(1000*3600*24);  
        return Integer.parseInt(String.valueOf(between_days));           
    }
	
	static GregorianCalendar gcal = new GregorianCalendar();  
	public static Date dateBeforeSeconds(Date date,Integer second) { 
	    gcal.setTime(date);  
	    gcal.add(13, second);
	    return gcal.getTime();
	}
	
	
	public static void main(String[] args) throws ParseException {
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
//        Date d1=sdf.parse("2012-09-08 10:10:10");  
//        Date d2=sdf.parse("2012-09-15 00:00:00");  
//        System.out.println(daysBetween(d1,d2));  
		Date date = new Date();
		System.out.println(date);
		System.out.println(dateBeforeSeconds(date, -60));
	}
}
