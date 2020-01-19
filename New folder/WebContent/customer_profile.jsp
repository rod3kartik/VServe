<%@page import = "com.Queries" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="src/startbootstrap-agency-master/vendor/bootstrap/css/bootstrap.min.css">
<title>customer profile</title>
<style>


/* ==========================================================================
   Author's custom styles
   ========================================================================== */

body
{
    font-family: 'Open Sans', sans-serif;
}

.fb-profile img.fb-image-lg{
    z-index: 0;
    width: 100%;  
    margin-bottom: 10px;
}

.fb-image-profile
{
    margin: -90px 10px 0px 50px;
    z-index: 9;
    width: 20%; 
}

@media (max-width:768px)
{
    
.fb-profile-text>h1{
    font-weight: 700;
    font-size:16px;
}

.fb-image-profile
{   margin: -45px 10px 0px 25px;
    z-index: 9;
    width: 20%; 
}
}
/* modal form for message*/
@import url(http://fonts.googleapis.com/css?family=Roboto);

/****** LOGIN MODAL ******/
.loginmodal-container {
  padding: 30px;
  max-width: 350px;
  width: 100% !important;
  background-color: #F7F7F7;
  margin: 0 auto;
  border-radius: 2px;
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  overflow: hidden;
  font-family: roboto;
}

.loginmodal-container h1 {
  text-align: center;
  font-size: 1.8em;
  font-family: roboto;
}

.loginmodal-container input[type=submit] {
  width: 100%;
  display: block;
  margin-bottom: 10px;
  position: relative;
}

.loginmodal-container input[type=text], input[type=password] {
  height: 44px;
  font-size: 16px;
  width: 100%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}

.loginmodal-container input[type=text]:hover, input[type=password]:hover {
  border: 1px solid #b9b9b9;
  border-top: 1px solid #a0a0a0;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}

.loginmodal {
  text-align: center;
  font-size: 14px;
  font-family: 'Arial', sans-serif;
  font-weight: 700;
  height: 36px;
  padding: 0 8px;
/* border-radius: 3px; */
/* -webkit-user-select: none;
  user-select: none; */
}

.loginmodal-submit {
  /* border: 1px solid #3079ed; */
  border: 0px;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1); 
  background-color: #4d90fe;
  padding: 17px 0px;
  font-family: roboto;
  font-size: 14px;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.loginmodal-submit:hover {
  /* border: 1px solid #2f5bb7; */
  border: 0px;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #357ae8;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.loginmodal-container a {
  text-decoration: none;
  color: #666;
  font-weight: 400;
  text-align: center;
  display: inline-block;
  opacity: 0.6;
  transition: opacity ease 0.5s;
} 

.login-help{
  font-size: 12px;
}
</style>
</head>


<body>
<script src=" src\startbootstrap-agency-gh-pages\vendor\jquery\jquery.min.js"></script>
<script src=" src\startbootstrap-agency-gh-pages\vendor\bootstrap\js\bootstrap.min.js"></script>

<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<div class="container">
    <div class="fb-profile">
        <img align="left" class="fb-image-lg" src="C:\Users\Kartik\workspace\VServe\WebContent\banner4.jpg" alt="Profile image example"/>
        <img align="left" class="fb-image-profile thumbnail" src="C:\Users\Kartik\workspace\VServe\WebContent\jain_passport.jpeg" alt="Profile image example"/>
        <div class="fb-profile-text">
       <% 	String email = request.getParameter("email");
       String details2[] = new Queries().getCustomerDetails(email);
	String details[] = new Queries().getDetails(email);
	HttpSession s = request.getSession(false);
	if(s!=null){
		s.setAttribute("emailKey", email);
	}
%>
            <h1><%=details[0]%><%= details[1] %></h1>
            
        </div>
    </div>
</div> <!-- /container -->  

<div class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
			
			<div class="profile-usermenu">
					<ul class="nav">
						<li class="active">
							<a href="#">
							<i class="glyphicon glyphicon-home"></i>
							My Requests</a>
						</li>
						<li disabled>
							<a href="#update">
							<i class="glyphicon glyphicon-user"></i>
							Update profile</a>
						</li>
						
						<li disabled>
							<a href="Homepage.html">
							<i class="glyphicon glyphicon-flag"></i>
							Logout</a>
						</li>
					</ul>
				</div>
				</div>
				</div>
				
				<div class="col-md-9">
            <div class="profile-content">
		<h3 class="text-center">Requests</h3>&nbsp; &nbsp;
		<br><br>
No of guests expected <%=details[1] %>
<br>
Preferred Food <%=details[2] %>
<br>
Budget per plate <%=details[3] %>
Date of event <%=details[4] %>
<br>
Needing equipments ? <%=details[5] %>
<br>
Preferred Cuisine ? <%=details[6] %>

	<br>
	<br><a class="btn btn-primary" data-toggle="modal" data-target="#login-modal" >Send A Message</a>
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	  <div class="modal-dialog">
				<div class="loginmodal-container">
					<h1>Contact your Customer</h1><br>
				  <form action = "vendor_communicate2.jsp">
				  
 
 <div class="form-group">
 <label>Message</label>
 <textarea rows="5" class="form-control" placeholder="Message" id="message" name="message" required="" data-validation-required-message="Please enter a message."></textarea>
        </div>    
        
 <div id="success"></div>
  <div class="row">
 <div class="form-group col-xs-12">
  <button type="submit" class="btn btn-success btn-lg">Send</button>
  </div>
 
					 </form>
					
				  
				</div>
			</div>
		  </div>
		  <br>
		  <br>

	 </div> <!-- profile content -->
		</div>
				
				<br>
				
<div class="container" id="upload">
<form id="upload">
<div class="row">

</div>

<div class="form-group" id="update">
        <label class="text-align center">Upload Image</label>
        <div class="input-group">
            <span class="input-group-btn">
                <span class="btn btn-default btn-file">
                    Browse..<input type="file" name="profile_picture" id="imgInp">
                </span>
            </span>
            
        </div>
        
    </div>
</form>
</div>
<br>
     
				



</div>
				</div>
				
</body>
</html>
