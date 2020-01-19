<%@ page import ="com.Queries" %>
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
	String customers_message = request.getParameter("customers_reply");
	String email = s.getAttribute("email").toString();
	String vendors_message = s.getAttribute("vendors_message").toString();
	String aadhar = s.getAttribute("aadhar").toString();

	int res = new Queries().InsertintoVendorMessageBox(email, customers_message, aadhar, vendors_message);
}
%>
</body>
</html>