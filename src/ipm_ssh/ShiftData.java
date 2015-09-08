package ipm_ssh;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ShiftData {
	
	static Connection con = null;
    static Statement st = null;
    static ResultSet rs = null;


    public static int getData(String u)
    {
		int count=0;
		//int flag=0;
    	try
    	{
    	connectionJava c = new connectionJava(); 
        con = c.getConnection();
        //System.out.println(con);
        st = con.createStatement(); 
        rs = st.executeQuery("select * from shiftdata where date='"+u+"' ");
           //System.out.println(u.getUser());
       
       
           //return count;
    } catch (SQLException ex) {
        //Logger lgr = Logger.getLogger(Version.class.getName());
        //lgr.log(Level.SEVERE, ex.getMessage(), ex);

    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
            if (st != null) {
                st.close();
            }
            if (con != null) {
                con.close();
            }

        } catch (SQLException ex) {
            //Logger lgr = Logger.getLogger(Version.class.getName());
            //lgr.log(Level.WARNING, ex.getMessage(), ex);
        }
    }
		return count;
    }

}
