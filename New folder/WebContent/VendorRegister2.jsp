<%@page import="com.Queries"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
String Aadhar = request.getParameter("Aadhar");
String FullName = request.getParameter("FullName");
String Email = request.getParameter("Email");
String Contact = request.getParameter("Contact");
String Password = request.getParameter("Password");
int emailCount,contactCount;
int res= new Queries().InsertintoVendorRegister(Aadhar, FullName, Email, Contact, Password);
if(res!=0)
response.sendRedirect("VendorLogin.jsp");
else
	response.sendRedirect("VendorRegisterFailure.jsp");
%>
</body>
</html>