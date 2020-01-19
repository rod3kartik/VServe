<%@ page import = "com.Queries" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String Email=request.getParameter("email");
String password=request.getParameter("password");
	
		Queries q = new Queries();
				if(q.Login(Email,password)){
					String aadhar = q.aadhar;
					//String emailGot = q.emailToBeReturned;
					System.out.println(aadhar);
					HttpSession s = request.getSession();
					s.setAttribute("aadhar", aadhar);
					//s.setAttribute("email", emailGot);
				RequestDispatcher rd = request.getRequestDispatcher("vendor_home.jsp");
				rd.forward(request, response);
				
			}
			else{ 
				out.println("<h1>Login Not Successful</h1>");
				RequestDispatcher rd = request.getRequestDispatcher("VendorLogin.jsp");
				rd.include(request, response);
			}
			
			%>
</body>
</html>