<%@page import = "com.Queries" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="src/startbootstrap-agency-master/vendor/bootstrap/css/bootstrap.min.css">
<title>Insert title here</title>
<style>
@import url("http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css");
/* HERE STARTS THE MAGIC */
header {
    text-align: center;
    color: #fff;
    background: #18bc9c;

    position: fixed;
    width:100%;
    z-index: 1;
    height: 88%;
    overflow: hidden;
    top: 0;
    left: 0;
}

.content-wrapper{
    background-color: white;
    top: 87%;
    min-height: 12%;
    position:absolute;
    z-index: 2;
    width: 100%;    
}
/* HERE ENDS THE MAGIC */
header .container {
    padding-top: 150px;
    padding-bottom: 50px;
}

header img {
    display: block;
    margin: 20 auto 20px;
}

header .intro-text .name {
    display: block;
    text-transform: uppercase;
    font-family: Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 2em;
    font-weight: 700;
}


header .intro-text .skills {
    font-size: 1.25em;
    font-weight: 300;
}

section {
    padding: 100px 0;    
    width: 100%;
}

section h2 {
    margin: 0;
    font-size: 3em;
}
hr.star-light,
hr.star-primary {
    margin: 25px auto 30px;
    padding: 0;
    max-width: 250px;
    border: 0;
    border-top: solid 5px;
    text-align: center;
}

hr.star-light:after,
hr.star-primary:after {
    content: "\f005";
    display: inline-block;
    position: relative;
    top: -.8em;
    padding: 0 .25em;
    font-family: FontAwesome;
    font-size: 2em;
}

hr.star-light {
    border-color: #fff;
}

hr.star-light:after {
    color: #fff;
    background-color: #18bc9c;
}

hr.star-primary {
    border-color: #2c3e50;
}

hr.star-primary:after {
    color: #2c3e50;
    background-color: #fff;
}

section.primary h2{    
    color: #2c3e50;
    }
    
section.success{
    background-color: #18bc9c;
    color: #fff;
    }
    html,body {
    height:100%;
    width:100%;
    position:relative;
}
.fade-carousel {
    position: relative;
    height: 100vh;
}
.fade-carousel .carousel-inner .item {
    height: 100vh;
}
.fade-carousel .carousel-indicators > li {
    margin: 0 2px;
    background-color: #f39c12;
    border-color: #f39c12;
    opacity: .7;
}
.fade-carousel .carousel-indicators > li.active {
  width: 10px;
  height: 10px;
  opacity: 1;
}

/********************************/
/*          Hero Headers        */
/********************************/
.hero {
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 3;
    color: #fff;
    text-align: center;
    text-transform: uppercase;
    text-shadow: 1px 1px 0 rgba(0,0,0,.75);
      -webkit-transform: translate3d(-50%,-50%,0);
         -moz-transform: translate3d(-50%,-50%,0);
          -ms-transform: translate3d(-50%,-50%,0);
           -o-transform: translate3d(-50%,-50%,0);
              transform: translate3d(-50%,-50%,0);
}
.hero h1 {
    font-size: 6em;    
    font-weight: bold;
    margin: 0;
    padding: 0;
}

.fade-carousel .carousel-inner .item .hero {
    opacity: 0;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s; 
}
.fade-carousel .carousel-inner .item.active .hero {
    opacity: 1;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s;    
}

/********************************/
/*            Overlay           */
/********************************/
.overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 2;
    background-color: #080d15;
    opacity: .7;
}

/********************************/
/*          Custom Buttons      */
/********************************/
.btn.btn-lg {padding: 10px 40px;}
.btn.btn-hero,
.btn.btn-hero:hover,
.btn.btn-hero:focus {
    color: #f5f5f5;
    background-color: #1abc9c;
    border-color: #1abc9c;
    outline: none;
    margin: 20px auto;
}

/********************************/
/*       Slides backgrounds     */
/********************************/
.fade-carousel .slides .slide-1, 
.fade-carousel .slides .slide-2,
.fade-carousel .slides .slide-3 {
  height: 100vh;
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}
.fade-carousel .slides .slide-1 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339134316-0e91dc9ded92?q=75&fm=jpg&s=883a422e10fc4149893984019f63c818); 
}
.fade-carousel .slides .slide-2 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339684178-3a239570f315?q=75&fm=jpg&s=c39d9a3bf66d6566b9608a9f1f3765af);
}
.fade-carousel .slides .slide-3 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339276121-ba1dfa199912?q=75&fm=jpg&s=9bf9f2ef5be5cb5eee5255e7765cb327);
}

/********************************/
/*          Media Queries       */
/********************************/
@media screen and (min-width: 980px){
    .hero { width: 980px; }    
}
@media screen and (max-width: 640px){
    .hero h1 { font-size: 4em; }    
}

    
    
</style>
</head>
<body>

<script src=" src\startbootstrap-agency-gh-pages\vendor\jquery\jquery.min.js"></script>
<script src=" src\startbootstrap-agency-gh-pages\vendor\bootstrap\js\bootstrap.min.js"></script>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#page-top">V-Serve</a>
        </div>
         
               
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
            <li><a href="Customer_home.html">Home</a></li>
                  
              
              
             <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Choose Service<span class="caret"></span></a>
                     <ul class="dropdown-menu" role="menu">
                        <li><a href="Caterer.html">Catering</a></li>
                        <li><a href="#">Another service</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                     </ul>
                  </li>
                  
                  <li class="page-scroll">
                    <a href="#portfolio">Popular</a>
                </li>
                
                <li class="page-scroll">
                    <a href="#about">About Vserve</a>
                </li>
                
                
                
                 <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Choose Service<span class="caret"></span></a>
                     <ul class="dropdown-menu" role="menu">
                     <li><a href="#contact">View Message</a></li>
                        <li><a href="#" >Send Message</a></li>
                        
                        
                     </ul>
                  </li>
                  <li class="page-scroll">
                    <a href="Hitesh_customer.html">Profile</a>
                </li>
                
                
                <li class="page-scroll">
                    <a href="Homepage.html">Logout</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<div id="page-top">
    <div class="container">
        <div class="row">
            <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
  <!-- Overlay -->
  <div class="overlay"></div>

  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
    <li data-target="#bs-carousel" data-slide-to="1"></li>
    <li data-target="#bs-carousel" data-slide-to="2"></li>
  </ol>
  
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item slides active">
      <div class="slide-1"></div>
      <div class="hero">
        <hgroup>
            <h1>We are creative</h1>        
            <h3>Get start your next awesome service experience</h3>
        </hgroup>
              </div>
    </div>
    <div class="item slides">
      <div class="slide-2"></div>
      <div class="hero">        
        <hgroup>
            <h1>We are smart</h1>        
            <h3>Get start your next awesome service experience<h3>
        </hgroup>       
              </div>
    </div>
    <div class="item slides">
      <div class="slide-3"></div>
      <div class="hero">        
        <hgroup>
            <h1>We are amazing</h1>        
            <h3>Get start your next awesome service experience</h3>
        </hgroup>
        
      </div>
    </div>
  </div> 
</div>
 
        </div>
    </div>
</div>
<div class="content-wrapper">
    <section class="primary" id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Featured Vendors</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <img src="http://lorempixel.com/360/260/nature/">    
                </div>
                <div class="col-sm-4">
                    <img src="http://lorempixel.com/360/260/animals/">    
                </div>
                <div class="col-sm-4">
                    <img src="http://lorempixel.com/360/260/abstract/">    
                </div>
            </div>
        </div>
    </section>
       <section class="success" id="view_vendors">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>View Vendors</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
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
			<td><a href="vendor_profile.jsp?aadhar=<%= row[j][0]%>">view details</a></td>
				
				
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
	
	
                
                
                
            </div>
        </div>
    </section>
    
    
    
    
    <section class="primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>About</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>Freelancer is a free bootstrap theme created by Start Bootstrap. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional LESS stylesheets for easy customization.</p>
                </div>
                <div class="col-lg-4">
                    <p>Whether you're a student looking to showcase your work, a professional looking to attract clients, or a graphic artist looking to share your projects, this template is the perfect starting point!</p>
                </div>
            </div>
        </div>
    </section>
    <section class="primary" id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>View Message</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    
<% 	
	if(s!=null)
	{
		String email = s.getAttribute("email").toString();
		String[][] messages = new Queries().ShowMessagestoCustomer(email);
		int j =0;
	
	%>
	<% while(j<messages.length){
		
		 %>
			 Sender : <%=messages[j][1] %>
				 Message : <%= messages[j][2]%>
				 
		<a href="customer_communicate.jsp?aadhar=<%= messages[j][0]%>&message=<%=messages[j][2]%>">Reply</a></td>			 %>
	<br>
<%
		j++;		
	 			
	}} %>		                </div>
            </div>
        </div>
    </section>
 </div>


<script>
$(function() {
    
	  $('a[href*=#]:not([href=#])').click(function() {
	    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
	      var target = $(this.hash);
	      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
	      if (target.length) {
	        $('html,body').animate({
	          scrollTop: target.offset().top
	        }, 1000);
	        return false;
	      }
	    }
	  });
	  
	});

</script>


</body>
</html>