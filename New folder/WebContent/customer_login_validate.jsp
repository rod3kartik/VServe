<%@ page import="com.Queries" %>
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
String email=request.getParameter("email");
String password=request.getParameter("password");
	
		Queries q = new Queries();
				if(q.CustomerLogin(email, password)){
					String firstname = q.firstName;
					String lastname = q.lastName;
					String emailGot = q.emailToBeReturned;
					System.out.println(firstname+ " "+ lastname);
					HttpSession s = request.getSession();
					s.setAttribute("firstname", firstname);
					s.setAttribute("lastname", lastname);
					s.setAttribute("email", emailGot);
				RequestDispatcher rd = request.getRequestDispatcher("customer_home.jsp");
				rd.forward(request, response);
				
			}
			else{ 
				out.println("<h1>Login Not Successful</h1>");
				RequestDispatcher rd = request.getRequestDispatcher("customer_login.jsp");
				rd.include(request, response);
			}
			
			%>

</body>
</html>