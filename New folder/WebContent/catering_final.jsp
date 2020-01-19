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
<%
	//String result1 = null;
	String equipment = request.getParameter("equipment");
	String cuisine[] = request.getParameterValues("cuisine");
	String cuisineList = " ";
	for(int i = 0; i<cuisine.length;i++)
	{
		 cuisineList = cuisineList + " " + cuisine[i];
	}
	String count = request.getParameter("count");
	String preference= request.getParameter("preference");
	String budget = request.getParameter("budget");
	String date = request.getParameter("date");
	
	HttpSession s = request.getSession(false);
	if(s!=null)
	{
		//s.setAttribute("key3", loc);
		//PreparedStatement pst;
		String email = s.getAttribute("email").toString();	
		int res = new Queries().InsertintoCustomerRequests(email, count, preference, budget, date, equipment,cuisineList);
		System.out.println("ground check");
		String row[][] = new Queries().Search(count, preference, equipment);
		if(row.length!=0)
		{ 
			int j=0;
		
		 %>
			 <h2> Employee Found</h2> 
			 <table border = 3>
				 <tr> 
					 <th>Owner name</th>
					 <th>Business name</th> 
					 <th>Address</th>
					 <th>Experience</th> 
				</tr> 
				
				
			<% while(j<row.length){
				%>
				 <tr>
				 <% 
			for(int i =1;i<5;i++)	
				{ %>
					 <td><%=row[j][i] %></td>
		<% }
			%>	
			<td><a href="vendor_profile.jsp?aadhar=<%= row[j][0]%>">view details</a></td>
				
				
				 </tr> 
				 <% 
				 j++;
			}
			%></table><%
		}
		
		 
		else{%>
			<h2>No Suitable Vendors found.</h2>
			
		<%}}
	else
		 {%> 
			 <h2>Employee not found</h2> 
		 <% }%>
	
	
	


</body>
</html>