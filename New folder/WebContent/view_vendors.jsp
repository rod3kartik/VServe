<%@ page import = "com.Queries" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	HttpSession s = request.getSession(false);
	if(s!=null){
		String email = s.getAttribute("email").toString();
		
		String row[][] = new Queries().SearchViaHomePage(email);
		int j=0;
		if(row.length!=0)
		{
		//String data[]=//row.split(" ");
		
		
		 %>
			 
			 <table border = 3>
				 <tr> 
					 <th>Owner Name</th>
					 <th>Business Name</th> 
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
			<td><a href="caterer_profile_page.jsp?aadhar=<%= row[j][0]%>">view details</a></td>
				
				
				 </tr> 
				 <% 
				 j++;
			}
				 %>
				 </table> 
		
		<% }
		
		 else
		 {%> 
			 <h2>No vendors available</h2> 
		<%  }
		//rd.include(request, response);
		 
		}
		
		else{
			%><h2> Session expired</h2>
			
		<% }%>
	
	
	
	

</body>
</html>