<%@ page import="java.sql.ResultSet"  %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Statement" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prepare Shift Schedule</title>
<script>
	function doSubmit(){
	  var empCount = document.getElementById("EmpCount").value;
	  var shiftCount = document.getElementById("ShiftCount").value;
	  var perCount = document.getElementById("PersonCount").value;
	  window.location.replace("generateShift.jsp?emp="+empCount+","+shiftCount+","+perCount);
	}
</script>
</head>
<body>
<div style="float: left; width: 40%">
      <div style="height: 200px; background-color: #efefef; padding: 10px; -webkit-border-radius: 12px; -moz-border-radius: 12px; margin-right: 10px">
        <h3 style="text-align: center; background-color: white; -webkit-border-radius: 10px; -moz-border-radius: 10px; margin-top: 0px; margin-bottom: 20px; padding: 8px">
          Generate Shift Schedule
        </h3>        
        
          <div id="embeddedField" style="float: middle; width: 100%">
          
          <table style="width:100%">
           <tr><td>Number of Employees</td> <td><input type="text" id="EmpCount" value=""></td> </tr> 
           <tr> <td>Number of Shifts</td><td> <input type="text" id="ShiftCount" value=""></tr>
           <tr> <td>Minimum Number of Persons/Shift</td><td> <input type="text" id="PersonCount" value=""></tr>
           <tr> <td>Start Date</td><td> <input class="infusion-field-input" type="text" name="inf_field_DateField" value=""></tr>
           <tr> <td>End Date</td><td> <input class="infusion-field-input" type="text" name="inf_field_DateField" value=""></tr>
           </table>
           
           
           <br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="submit" value="Submit" class="button" onClick="doSubmit()"/>
   
          </div>
          <br />
		</div>
      </div>    
      
      <div class="cardcontainer" style="float: right; width: 50%">
			<%

	int i=0;
	String date = request.getParameter("emp");
	System.out.println(date);
	if(date!=null){
	String[] dats = date.split(",");
	System.out.println(dats[0]+dats[1]+dats[2]);
    ResultSet rs = null;
	String url = "jdbc:postgresql://localhost:5432/postgres";
	String user1 = "postgres";
	String password = "admin";
	Connection con = null;
	Class.forName("org.postgresql.Driver");
	con = DriverManager.getConnection(url, user1, password);
	PreparedStatement ps = con.prepareStatement("select userid,shiftid from usershiftmap where date =\""+date+"\"");
	rs = ps.executeQuery();
	String usrArray[] = new String[3];
			
	while (rs.next())
	{
		i++;
		int shiftid=Integer.parseInt(rs.getString(2));
		switch(shiftid){
			case 1:
				usrArray[0]=usrArray[0]+rs.getString(1)+"\n";
			case 2:
				usrArray[1]=usrArray[1]+rs.getString(1)+"\n";
			case 3:
				usrArray[2]=usrArray[2]+rs.getString(1)+"\n";
		}
	}
	
	if(i>0){
		out.println("<div class=\"card\"><table border=\"1\" style=\"width:100%\"> <tr><td>Shift A</td> <td>Shift B</td> <td>Shift C</td></tr> <tr> <td>"+usrArray[0]+"</td> <td>"+usrArray[1]+"</td>		    <td>"+usrArray[2]+"</td>	  </tr>	</table></div>");
	}
	}
	%>
     </div> 
    
</body>
</html>