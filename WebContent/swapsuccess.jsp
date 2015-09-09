<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

out.println("Swapped successfully");
%>
<form name="f1" method="post" action="events.jsp">
<input type="submit" name="submit" value="Click to redirect back to calendar page" class="button" />

</form>
</body>
</html>