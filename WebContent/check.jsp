<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ipm_ssh.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head> 
<body>
<jsp:useBean id="obj" class="ipm_ssh.userBean"/>

<jsp:setProperty property="*" name="obj"/>
<%
int status=loginCheck.login(obj);
if (status>0)
{
	//out.println(obj.getUser());
	//out.println("<font color=red><b>Success</b></font>");
	response.sendRedirect("events.jsp");
	session.setAttribute("user",obj);
	session.setAttribute("event", "false");
	if (status==2)
		session.setAttribute("admin","true");
	else
		session.setAttribute("admin", "null");


}
//else if (status==1)
//{
//	response.sendRedirect("admin.jsp");
//	session.setAttribute("user",obj);
//}
else
	response.sendRedirect("index.jsp");
%>
</body>
</html>