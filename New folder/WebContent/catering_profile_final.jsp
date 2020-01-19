<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Queries" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	HttpSession s = request.getSession(false);
	if(s!=null)
	{
	String guests = request.getParameter("count");
	String category = request.getParameter("preference");
	String equipment = request.getParameter("equipment");
	String aadhar = s.getAttribute("aadhar").toString();
	int res = new Queries().InsertintoCatering( aadhar, guests, category, equipment); 
	response.sendRedirect("vendor_home.jsp");
	}
	
	%>
	
</body>
</html>