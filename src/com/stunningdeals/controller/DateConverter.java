package com.stunningdeals.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;

public class DateConverter {

	public Date convertStringToSqlDate(String dateStr){
		
		//Parsing Date
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date date = null;
        try {
			date = sdf.parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
        // contains only date information without time 
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());
		return sqlDate;
	}
}
