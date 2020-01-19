<%@ page import = "com.Queries" %>
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
String aadhar = request.getParameter("aadhar");
String details[] = new Queries().getVendorDetails(aadhar);
%>
Vendor Full Name <%=details[1] %>
<br>
Email <%= details[2] %>
<br>
Contact him at <%=details[3] %>
<br>
			
</body>
</html>