package ipm_ssh;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class connectionJava {
	static Connection con = null;
    static PreparedStatement st = null;
    static ResultSet rs = null;
	public static Connection getConnection()
	{
		try
		{
	String url = "jdbc:postgresql://localhost/ipm-ssh";
    String user1 = "postgres";
    String password = "admin";
    con = DriverManager.getConnection(url, user1, password);
//    st = con.createStatement();
    
		}
		catch(SQLException e)
		{
			
		}
		return con;
	}


public static void main(String[] args)
{
	connectionJava ct = new connectionJava();
	System.out.println(ct.getConnection());
	
}
}