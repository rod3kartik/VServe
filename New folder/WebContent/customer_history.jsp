<%@ page import ="com.Queries" %>
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
	if(s!= null)
	{
		String email = s.getAttribute("email").toString();
		String row = new Queries().Search(email);
		int j=0;
		if(!row.contentEquals("zero"))
		{
		String data[]=row.split(" ");
		
		
		 %>
			 
			 <table border = 3>
				 <tr> 
					 <th>No. of guests</th>
					 <th>Preference</th> 
					 <th>Budget</th>
					 <th>Date</th>
					 <th>Needing equipment</th> 
				</tr> 
				
				
			<% 
				%>
				 <tr>
				 <% 
			for(int i =0;i<5;i++)	
				{ %>
					 <td><%=data[i] %></td>
		<% 
								
				}
				  
			%>	
			<td><a href="delete_request.jsp?email=<%= email%>">Delete Request</a></td>
				
				
				 </tr> 
				 <% 
				 
				 
				 %>
				 </table> 
		
		<%}
		else
		{
			%>
				No requests found.
			<%
		}
	
	}
		
		 else
		 {%> 
			 <h2>No record found</h2> 
		<%  
		//rd.include(request, response);
		 
		}%>

	

</body>
</html>