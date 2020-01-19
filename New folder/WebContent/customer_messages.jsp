<%@page import ="com.Queries" %>
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
		String email = s.getAttribute("email").toString();
		String[][] messages = new Queries().ShowMessagestoCustomer(email);
		int j =0;
	
	%>
	<% while(j<messages.length){
		
		 %>
			 Sender : <%=messages[j][1] %>
				 Message : <%= messages[j][2]%>
				 
		<a href="customer_communicate.jsp?aadhar=<%= messages[j][0]%>&message=<%=messages[j][2]%>">Reply</a></td>			 %>
	<br>
<%
		j++;		
	 			
	}} %>		
</body>
</html>