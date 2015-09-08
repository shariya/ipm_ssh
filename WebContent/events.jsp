<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="ipm_ssh.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="vz-events.css" rel="stylesheet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.login-form .footer .button {
	float: right;
	padding: 11px 25px;
	font-family: 'Bree Serif', serif;
	font-weight: 300;
	font-size: 18px;
	color: #fff;
	text-shadow: 0px 1px 0 rgba(0, 0, 0, 0.25);
	background: #56c2e1;
	border: 1px solid #46b3d3;
	border-radius: 5px;
	cursor: pointer;
	box-shadow: inset 0 0 2px rgba(256, 256, 256, 0.75);
	-moz-box-shadow: inset 0 0 2px rgba(256, 256, 256, 0.75);
	-webkit-box-shadow: inset 0 0 2px rgba(256, 256, 256, 0.75);
}

.login-form .footer .button:hover {
	background: #3f9db8;
	border: 1px solid rgba(256, 256, 256, 0.75);
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
	-webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}

.login-form .footer .button:focus {
	position: relative;
	bottom: -1px;
	background: #56c2e1;
	box-shadow: inset 0 1px 6px rgba(256, 256, 256, 0.75);
	-moz-box-shadow: inset 0 1px 6px rgba(256, 256, 256, 0.75);
	-webkit-box-shadow: inset 0 1px 6px rgba(256, 256, 256, 0.75);
}
</style>
<script src="../js/prototype.js"></script>
    <script src="../js/calendarview.js"></script>
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
ResultSet rs = null;
if(session.getAttribute("user")==null)
{
	response.sendRedirect("index.jsp");
}
if(session.getAttribute("admin").equals("true"))
{
	out.println("<br/><a style=\"margin-top: 200px\"href=\"addEvent.jsp\">Add event page</a>");
}
%>
			</div>
		</div>

		<div style="float: left; width: 50%">
			<div
				style="height: 400px; background-color: #efefef; padding: 10px; -webkit-border-radius: 12px; -moz-border-radius: 12px; margin-right: 10px">
				<h3
					style="text-align: center; background-color: white; -webkit-border-radius: 10px; -moz-border-radius: 10px; margin-top: 0px; margin-bottom: 20px; padding: 8px">
					Schedule Calendar</h3>
				<div id="embeddedExample" style="">
					<div id="embeddedCalendar"
						style="margin-left: auto; margin-right: auto"></div>
					<br />
					<div id="embeddedDateField" class="dateField">Select Date</div>
					<br />
				</div>
			</div>
		</div>

	</div>
	<div class="cardcontainer">
		<form name="form" method="post" action="loading2.jsp">
			<!--  jsp:useBean id="obj" class="com.vz.Event" -->
			<jsp:setProperty property="*" name="obj" />

			<%
//out.println(session.getAttribute("user"));
//rs = eventList.GetEvents();
//while (rs.next())
//{
//out.println("<div class=\"card\"><div class=\"image\"><img src=\"http://i.imgur.com/WerlaFe.jpg\"><span class=\"title\">"+rs.getString("ename")+"</span> </div>  <div class=\"content\">  	<p class=\"category\">"+rs.getString("category")+"</p>    <p class=\"count\" style=\"float:left;\">"+rs.getInt("count")+"/"+rs.getInt("max")+"</p>	<p class=\"host\"style=\"float:right;\">"+rs.getString("hostname")+"</p>  </div>  <div class=\"action\">    <input class=\"button\" type=\"submit\" value=\"Register for this event\" name=\""+rs.getString("eid")+"\"></a>  </div></div>");
//}
%>
		</form>
	</div>
</body>
</html>