<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="catering_four.jsp">
What is your estimated budget?
Rs 500-700 per plate<input type="radio" name="budget" value ="700">
Rs 700-1200 per plate<input type="radio" name="budget" value = "1200">
Rs 1200 or more per plate<input type="radio" name="budget" value ="2000">
<input type="submit" value="Next">
</form>
<% 
String preference = request.getParameter("preference");
	HttpSession s = request.getSession(false);
	
	if(s!=null)
	{	
		
		s.setAttribute("key2", preference);
				
	}
	%>
</body>
</html>