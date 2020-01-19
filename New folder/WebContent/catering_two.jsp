<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="catering_three.jsp">
What is your food preference? 
Vegetarian<input type="radio" name="preference" value="veg">
Vegetarian & Non-vegetarian<input type="radio" name="preference" value="nonveg">
<input type="submit" value="Next">
</form>
<%
	HttpSession s = request.getSession();
	String guests = request.getParameter("count");
	
	s.setAttribute("key1", guests);
	
%>
</body>
</html>