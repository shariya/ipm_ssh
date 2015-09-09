package ipm_ssh;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SwapOptions {
	static Connection con = null;
    static Statement st = null;
    static ResultSet rs = null;
    
    public static ResultSet Swapping(swapping u)
    {
    	try
    	{
    	String swapOptions[]=null;
    	connectionJava c = new connectionJava(); 
        con = c.getConnection();
        //System.out.println(con);
        
			st = con.createStatement();
		
        rs = st.executeQuery("select userid from usershiftmap where shiftid<>'"+u.getShiftid()+"' and date='"+u.getDate()+"'");
    	}
    	catch (Exception e)
    	{
    		
    	}
    	
    	return rs;
    }

}
