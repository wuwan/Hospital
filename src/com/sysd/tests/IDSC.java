package com.sysd.tests;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class IDSC {

	public static int  SC(){
			int id=0;
		 Calendar calendar=Calendar.getInstance();
		 SimpleDateFormat smft=new SimpleDateFormat("MMddHHmmss");
		 String nowString=smft.format(calendar.getTime());
		 id=Integer.parseInt(nowString);
		 System.out.println(id);
     	 return id;
	}

}
