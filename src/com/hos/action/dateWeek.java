package com.hos.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class dateWeek {
		public String getWeek(String dateString) throws Exception{
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
			 Date date = sdf.parse(dateString); 
			String[] weeks = {"星期日","星期一","星期二","星期三","星期四","星期五","星期六"};
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			int week_index = cal.get(Calendar.DAY_OF_WEEK) - 1;
			if(week_index<0){
				week_index = 0;
			} 
			return weeks[week_index];
		}
		
		public String randon(){
			 Date date=new Date();
			 SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
			 String s1=sdf.format(date); 
			 for(int i=0;i<4;i++){
				 int rand =(int)(Math.random()*9);
				 s1+=rand;
			 }
			return s1;
		}
}
