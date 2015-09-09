<%@ page import="java.sql.ResultSet"  %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Statement" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>IPM SSH Home</title>
    <link rel="stylesheet" href="calendarview.css">
    <style>
      body {
        font-family: Trebuchet MS;
      }
      div.calendar {
        max-width: 240px;
        margin-left: auto;
        margin-right: auto;
      }
      div.calendar table {
        width: 100%;
      }
      div.dateField {
        width: 140px;
        padding: 6px;
        -webkit-border-radius: 6px;
        -moz-border-radius: 6px;
        color: #555;
        background-color: white;
        margin-left: auto;
        margin-right: auto;
        text-align: center;
      }
      div#popupDateField:hover {
        background-color: #cde;
        cursor: pointer;
      }
    </style>
    <script src="prototype.js"></script>
    <script src="calendarview.js"></script>
    <script>
      function setupCalendars() {
        // Embedded Calendar
        Calendar.setup(
          {
            dateField: 'embeddedDateField',
            parentElement: 'embeddedCalendar'
          }
        )
      }
      
      function doSubmit(){
    	  var date = document.getElementById('embeddedDateField').innerHTML;
    	  alert(date);
    	  window.location.replace("events.jsp?date="+date);
      }
      

      Event.observe(window, 'load', function() { setupCalendars() })
    </script>
  </head>
  <body>

<div class="titlebar">
		<div class="logo">
			<img src="verizon-logo-red.png" height=100px />
		</div>
		<div style="float: right; width: 150px;">
			<input id="search" type="text" placeholder=Search... />
			<div class="addevent">
				<%

%>
			</div>
		</div>
</div>

    <div style="float: left; width: 30%">
      <div style="height: 300px; background-color: #efefef; padding: 10px; -webkit-border-radius: 12px; -moz-border-radius: 12px; margin-right: 10px">
        <h3 style="text-align: center; background-color: white; -webkit-border-radius: 10px; -moz-border-radius: 10px; margin-top: 0px; margin-bottom: 20px; padding: 8px">
          Schedule Calendar
        </h3>
        <div id="embeddedExample" style="">
          <div id="embeddedCalendar" style="margin-left: auto; margin-right: auto">
          </div>
          <br />
          <div id="embeddedDateField" class="dateField">
            Select Date
          </div>        
           <br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
          <div id="embeddedField" style="float: middle; width: 100%">
            <input type="submit" name="submit" value="Submit" class="button" onClick="doSubmit()"/>
            </div>
          <br />
		</div>
      </div>
    </div>
    
    <div class="cardcontainer" style="float: right; width: 50%">
			<%

	int i=0;
	String date = request.getParameter("date");
	System.out.println(date);
	if(date!=null){
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