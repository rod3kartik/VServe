<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.Queries" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 	String email = request.getParameter("email");
	String details[] = new Queries().getDetails(email);
	HttpSession s = request.getSession(false);
	if(s!=null){
		s.setAttribute("emailKey", email);
	}
%>
No of guests expected <%=details[1] %>
<br>
Preferred Food <%=details[2] %>
<br>
Budget per plate <%=details[3] %>
Date of event <%=details[4] %>
<br>
Needing equipments ? <%=details[5] %>
<br>
Preferred Cuisine ? <%=details[6] %>
<form action = "vendor_communicate.jsp">
	<input type = "submit" value="Send a message!"></input>
	</form>

</body>
</html>