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
	HttpSession s = request.getSession(false);
	if(s!=null)
	{
		String aadhar = request.getParameter("aadhar");
		System.out.println(aadhar);
	String vendors_message = request.getParameter("message");
	System.out.println(vendors_message);;
	s.setAttribute("aadhar", aadhar);
	s.setAttribute("vendors_message", vendors_message);
	}
	//String email = s.getAttribute("email").toString();
	//String message = //new Queries().InsertintoVendorMessageBox(email, message, aadhar, vendors_message);
	



%>


<form action ="customer_communication_controller.jsp">
Message: <input type= "text" name = "customers_reply">
<input type = "submit" value="Reply">
</form>
</body>
</html>