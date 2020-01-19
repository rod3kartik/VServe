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
How many guests are you expecting? 
Less than 50<input type="radio" name="count" value="50">
51-100<input type="radio" name="count" value="100" >
101-200<input type="radio" name="count" value="200" >
201-500<input type="radio" name="count" value="500">
more than 500<input type="radio" name="count" value="1000">
<br>
What is your food preference? 
Vegetarian<input type="radio" name="preference" value="veg">
Vegetarian & Non-vegetarian<input type="radio" name="preference" value="nonveg">

<br>
What is your prefered cuisine
Chinese<input type="checkbox" name="cuisine" value="chinese">
Italian<input type="checkbox" name="cuisine" value="italian">
Mexican<input type="checkbox" name="cuisine" value="mexican">
Lebanese<input type="checkbox" name="cuisine" value="lebanese">
<br>
What is your estimated budget?
Rs 500-700 per plate<input type="radio" name="budget" value ="700">
Rs 700-1200 per plate<input type="radio" name="budget" value = "1200">
Rs 1200 or more per plate<input type="radio" name="budget" value ="2000">
<br>
When is the event?
 <input type="date" name="date">

<br>
Will you require us to provide equipment?
 Yes<input type="radio" name="equipment" value="yes">
No <input type="radio" name="equipment" value="no">
<br>
<input type="submit" value="Next">

</form>
</body>
</html>