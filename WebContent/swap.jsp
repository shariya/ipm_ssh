<%@page import="ipm_ssh.SwapOptions"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ipm_ssh.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Swap shifts</title>
<jsp:useBean id="obj" class="ipm_ssh.swapping"/>
<jsp:setProperty property="*" name="obj"/>
<%
int[] series = {0};

ResultSet rs = SwapOptions.Swapping(obj);
 while ( rs.next() )
 {
	 series = AddElement.addElement(series,rs.getInt("userid"));
	 out.println(rs.getInt("userid"));
 }
 out.println("series:"+series);
	 %>
<script language="javascript">

 //alert(dt_month);
 function addOption(selectbox,text,value )
 {
 var optn = document.createElement("OPTION");
 optn.text = text;
 optn.value = value;
 selectbox.options.add(optn);
 }

 function addOption_list(){
 var month = new Array("January","February","March","April","May","June","July","August",
"September","October","November","December");
 var s="<%=series%>"; 
 for (var i=0; i < s.length;++i){
 addOption(document.drop_list.Month_list, s[i], s[i]);
 if(i== dt_month){document.drop_list.Month_list.options[i].selected=true;}
 }
 }
 </script>
</head>

<body onLoad="addOption_list()">
  
 <br><br>
 <FORM name="drop_list" action="yourpage.php" method="POST" >

 <SELECT NAME="Month_list">
 <Option value="" >Month list</option>
 </SELECT>
 </form>

</body>
</html>