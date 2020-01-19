<%@ page import = "com.Queries" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="src/startbootstrap-agency-master/vendor/bootstrap/css/bootstrap.min.css">
<title>vendor profile</title>
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
/* for gallery */
.hide-bullets {
    list-style:none;
    margin-left: -40px;
    margin-top:20px;
}

.thumbnail {
    padding: 0;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
    width: 100%;
}

.col-sm-3 a {
    border: 1px solid transparent;
    border-radius: 0;
    transition: all 3s ease;
}

.col-sm-3 a:hover {
    border: 1px solid #ff4647;
    border-radius: 100% 60% / 30% 10%;
    background: linear-gradient(rgba(56,123,131,0.7),rgba(56,123,131,0.7));
}
</style>
</head>


<body>
<%
String aadhar = request.getParameter("aadhar");
String details[] = new Queries().getVendorDetails(aadhar);
%>
<script src=" src\startbootstrap-agency-gh-pages\vendor\jquery\jquery.min.js"></script>
<script src=" src\startbootstrap-agency-gh-pages\vendor\bootstrap\js\bootstrap.min.js"></script>

<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<div class="container">
    <div class="fb-profile">
        <img align="left" class="fb-image-lg" src ="C:\Users\Kartik\workspace\VServe\WebContent\banner4.jpg" alt="Profile image example"/>
        <img align="left" class="fb-image-profile thumbnail" src="http://lorempixel.com/180/180/people/9/" alt="Profile image example"/>
        <div class="fb-profile-text">
            <h1><%=details[1] %></h1>
            <p>Be it a wedding or birthday party..just call us!!!!</p>
            Email:  <%= details[2] %><br>
            Contact him at <%= details[3] %>
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
							<a href="#gallery">
							<i class="glyphicon glyphicon-user"></i>
							Gallery </a>
						</li>
						<li>
							<a href="#upload">
							<i class="glyphicon glyphicon-home"></i>
							Upload Photos </a>
						</li>
						
						<li>
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
		<h3 class="text-center">Plan a Perfect Wedding</h3>
		<p>So it is that time of your life, when you’re getting cold feet because D-Day is finally here…It’s up to you to organize your daughter’s wedding and you definitely want it to be the greatest show on earth…
Relax. The good news is that you have wedding catering services india professionals like us at your disposal to sail you smilingly out of these days…
</p>
<br>
<h3 class="text-center">Why Us</h3>
		<p>It is not just the enormity of the task that might make you consider hiring wedding catering services india. Unlike your father or uncle, you are unlikely to have the time to run around and find the best people or the best rates, whether for photographer, decorator or card designer. And the days when relatives pitched in are gone–they’re busier than you. And even more significant, no one really has the kind of expertise or experience in this area than we as planners have.
So forget about the sleepless nights of anxiety of endless calculations and estimations and just give us a call. And we will be right there besides you, taking care of everything from the date of fixing of marriage till the time the Bidaai ceremony is completed.
<h4>Yes.. We are Affordable as well!!</h4>
</p>
<br class="bold">
<h3>See..what we can do..</h3>
<p>Our volunteers come into the scene the moment the date is fixed. First, there will be interactive sessions with you and your family on plans and budgets. After a few sessions, we will bring you options under various heads like venue, theme decor including flowers, lighting, entertainment, photography and videography. Then, we will get the best quotes from vendors to suit your budget, and help you negotiate the rates. If our clients have preferred vendors, we make sure they work better for them. Once the vendors are fixed, we will not only finalize the deal but also brief them about the requirements. For instance, we will brief the lighting men on just what will match the theme or color. During the function, wedding catering services india will supervises the work of the vendors to ensure that the plans are faithfully executed.
</p>
		            </div>
		</div>
				</div>
				</div>
				
				<br>
				
<div class="container" id="gallery">
<div id="main_area">
        <!-- Slider -->
        <div class="row">
            <div class="col-sm-6" id="slider-thumbs">
                <!-- Bottom switcher of slider -->
                <ul class="hide-bullets">
                    
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-1"><img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery1.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-2"><img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery2.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-3"><img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery3.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-4"><img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery4.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-5"><img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery5.jpg"></a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-6"><img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery6.jpg"></a>
                    </li>

                                    </ul>
            </div>
            <div class="col-sm-6">
                <div class="col-xs-12" id="slider">
                    <!-- Top part of the slider -->
                    <div class="row">
                        <div class="col-sm-12" id="carousel-bounding-box">
                            <div class="carousel slide" id="myCarousel">
                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                  <div class="active item" data-slide-number="1">
                                        <img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery1.jpg"></div>

                                    <div class="item" data-slide-number="2">
                                        <img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery2.jpg"></div>

                                    <div class="item" data-slide-number="3">
                                        <img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery3.jpg"></div>

                                    <div class="item" data-slide-number="4">
                                        <img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery4.jpg"></div>

                                    <div class="item" data-slide-number="5">
                                        <img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery5.jpg"></div>
                                    
                                    <div class="item" data-slide-number="6">
                                        <img src="C:\Users\Kartik\workspace\VServe\WebContent\gallery6.jpg"></div>
                                    
                                                                    </div>
                                <!-- Carousel nav -->
                                <!--<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>-->
                            </div>
                        </div>
                    </div>
                </div>
    
</div>				
				
<div class="container" id="upload">
<form id="upload">
<div class="row">
<div class="col-lg-12 text-center">
<h4>Upload Photos</h4>
</div>
</div>

<div class="form-group">
        <label class="text-align center">Upload Image</label>
        <div class="input-group">
            <span class="input-group-btn">
                <span class="btn btn-default btn-file">
                    Browse..<input type="file" name="profile_picture" id="imgInp">
                </span>
            </span>
 
        </div>
        <img id='img-upload'/>
    </div>
</form>
</div>
<br>
	<script>
	  jQuery(document).ready(function($) {
		  
	        $('#myCarousel').carousel({
	                interval: 5000
	        });
	 
	        //Handles the carousel thumbnails
	        $('[id^=carousel-selector-]').click(function () {
	        var id_selector = $(this).attr("id");
	        try {
	            var id = /-(\d+)$/.exec(id_selector)[1];
	            console.log(id_selector, id);
	            jQuery('#myCarousel').carousel(parseInt(id));
	        } catch (e) {
	            console.log('Regex failed!', e);
	        }
	    });
	        // When the carousel slides, auto update the text
	        $('#myCarousel').on('slid.bs.carousel', function (e) {
	                 var id = $('.item.active').data('slide-number');
	                $('#carousel-text').html($('#slide-content-'+id).html());
	        });
	});
	</script>			




</body>
</html>
