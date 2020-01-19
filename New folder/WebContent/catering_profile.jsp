<%@  page import ="java.io.*" %>
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
<form action = "catering_profile_final.jsp">
How many guests can you cater? 
Less than 50<input type="radio" name="count" value = "50">
51-100<input type="radio" name="count" value = "100">
101-200<input type="radio" name="count" value = "200">
201-500<input type="radio" name="count" value = "500">
more than 500<input type="radio" name="count" value = "1000">
<br>
What category of food will you be providing? 
Vegetarian<input type="radio" name="preference" value = "veg">
Vegetarian & Non-vegetarian<input type="radio" name="preference" value = "nonveg">
<br>
Will you be providing equipment?
 Yes<input type="radio" name="equipment" value="yes">
 No<input type="radio" name="equipment" value="no">
<br>
<input type="submit" value="Next">
</form>

<%
		
//	String businessname = request.getParameter("business_name");
	//String ownername = request.getParameter("vendor_name");
	//int id = 101;
	//int experience = Integer.parseInt(request.getParameter("experience"));
	//String contact = request.getParameter("contact");
	//String address = request.getParameter("address");
	//photo retrieve krna h // 
//	HttpSession s = request.getSession(false);
		//if(s!=null)
	//{
	//	s.setAttribute("aadhar", aadhar);
		//s.setAttribute("bname", businessname);
		//s.setAttribute("oname", ownername);
		//String aadhar = s.getAttribute("aadhar").toString();
		//s.setAttribute("aadhar", aadhar);
		//s.setAttribute("experience", experience);
		//s.setAttribute("contact", contact);
		//s.setAttribute("address", address);
		//id = Integer.parseInt(s.getAttribute("id").toString());
	//photo set krna h as an attribute//
	
	//int res = new Queries().InsertintoVendorDetails(id,aadhar,ownername,businessname,address,experience);
	//}
%>
</body>
</html>