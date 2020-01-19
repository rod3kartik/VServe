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
String firstName = request.getParameter("first_name");
String lastName = request.getParameter("last_name");
String Email = request.getParameter("email");
String Contact = request.getParameter("contact");
String Password = request.getParameter("password");
//int emailCount,contactCount;
int res= new Queries().InsertintoCustomerRegister(firstName, lastName, Contact,Email, Password);
if(res!=0)
response.sendRedirect("Homepage.html");
else
	response.sendRedirect("CustomerRegisterFailure.jsp");

%>

</body>
</html>