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
<form action="catering_five.jsp">
When is the event?
 <input type="date" name="date">
<input type="submit" value="Next">
</form>
<%
	//String result1 = null;
	String budget = request.getParameter("budget");
	HttpSession s = request.getSession(false);
	if(s!=null)
	{
		s.setAttribute("key3", budget);
		//PreparedStatement pst;
				 
		}%>

</body>
</html>
</body>
</html>