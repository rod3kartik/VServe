<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.Queries" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	HttpSession s = request.getSession(false);
	if(s!=null){
	String email = s.getAttribute("emailKey").toString();
	String message = request.getParameter("message");
	String aadhar = s.getAttribute("aadhar").toString();
	int res = new Queries().InsertintoCustomerMessageBox(email,message,aadhar);

	}
%>
</body>
</html>