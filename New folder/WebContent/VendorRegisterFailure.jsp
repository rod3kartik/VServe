<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
alert("The user is already registered");
</script>
<form action="VendorRegister2" method="post" enctype="multipart/form-data" >
Aadhar<input type= "text" name ="Aadhar" ><br>
Full Name<input type= "text" name ="FullName" ><br>
Email id<input type= "text" name ="Email" ><br>
Contact Number<input type= "text" name ="Contact"><br>
Password<input type= "password" name ="Password"><br>
Upload Image<input type="file" name = "profile_picture">
<input type="submit" value = "Next">
</form>
</body>
</html>