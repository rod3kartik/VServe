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
<%
	
	HttpSession s = request.getSession(false);
	if(s!=null)
	{ 
	String aadhar = s.getAttribute("aadhar").toString();
	String row[][] = new Queries().naturalJoin(aadhar);
	int j=0;
	System.out.println("yahaah");
	 %>
		  
		 <table border = 3>
			 <tr> 
				 <th>First Name</th>
				 <th>Last name</th> 
				 <th>Contact no.</th>
				 <th>Email ID</th> 
			</tr> 
			
			
		<% while(j<row.length){
			%>
			 <tr>
			 <% 
		for(int i =0;i<4;i++)	
			{ %>
				 <td><%=row[j][i] %></td>
	<% }
		%>	
		<td><a href="profile.jsp?email=<%= row[j][3]%>">view details</a></td>
			
			
			 </tr> 
			 <% 
			 j++;
		}
			 %>
			 </table> 
	
	<% }
	
	 else
	 {%> 
		 <h2>Employee not found</h2> 
	<%  
	//rd.include(request, response);
	 
	}%>

	

	
</body>
</html>