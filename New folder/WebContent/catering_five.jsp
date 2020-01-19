<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="catering_final.jsp">
Will you require us to provide equipment?
 <input type="text" name="equipment">
<input type="submit" value="Next">
</form>
<%
	//String result1 = null;
String date = request.getParameter("date");
HttpSession s = request.getSession(false);
	if(s!=null)
	{
		s.setAttribute("key4", date);
		//PreparedStatement pst;
				 
		}%>

</body>
</html>
</body>
</html>