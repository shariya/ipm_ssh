package ipm_ssh;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class Sssh {
	
	public static void main(String[] args) throws ParseException {
	    GregorianCalendar gcal = new GregorianCalendar();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
	    java.util.Date start =  sdf.parse("2010.01.01");
	    java.util.Date end = sdf.parse("2010.01.14");
	    gcal.setTime(start);
	    while (gcal.getTime().before(end)) {
	        gcal.add(Calendar.DAY_OF_YEAR, 1);
	        System.out.println( gcal.getTime().toString());
	    }
	}

}
