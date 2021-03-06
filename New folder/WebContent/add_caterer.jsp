<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="src/startbootstrap-agency-master/vendor/bootstrap/css/bootstrap.min.css">
<title>Insert title here</title>
<style>
body{ 
    margin-top:40px; 
}

.stepwizard-step p {
    margin-top: 10px;
}

.stepwizard-row {
    display: table-row;
}

.stepwizard {
    display: table;
    width: 100%;
    position: relative;
}

.stepwizard-step button[disabled] {
    opacity: 1 !important;
    filter: alpha(opacity=100) !important;
}

.stepwizard-row:before {
    top: 14px;
    bottom: 0;
    position: absolute;
    content: " ";
    width: 100%;
    height: 1px;
    background-color: #ccc;
    z-order: 0;

}

.stepwizard-step {
    display: table-cell;
    text-align: center;
    position: relative;
}

.btn-circle {
  width: 30px;
  height: 30px;
  text-align: center;
  padding: 6px 0;
  font-size: 12px;
  line-height: 1.428571429;
  border-radius: 15px;
}
</style>
</head>
<body>

<script src=" C:\Users\pc\Documents\engineering\8 sem\major\startbootstrap-agency-gh-pages\vendor\jquery\jquery.min.js"></script>
<script src=" C:\Users\pc\Documents\engineering\8 sem\major\startbootstrap-agency-gh-pages\vendor\bootstrap\js\bootstrap.min.js"></script>


<div class="container">
<h2 class="text-center">Help Us Serve You better!</h2>
<div class="stepwizard">
    <div class="stepwizard-row setup-panel">
        <div class="stepwizard-step">
            <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
            <p>Step 1</p>
        </div>
        <div class="stepwizard-step">
            <a href="#step-2" type="button" class="btn btn-default btn-circle">2</a>
            <p>Step 2</p>
        </div>
        
    </div>
</div>
<form role="form" action="DetailsServlet" method="post" enctype="multipart/form-data">
    <div class="row setup-content" id="step-1">
        <div class="col-xs-12">
            <div class="col-md-12">
                <h3> Step 1</h3>
                 <div class="form-group">
                    <label class="control-label">Business name</label>
                    <input  maxlength="100"  name="business_name" type="text" required="required" class="form-control" placeholder="Enter First Name"  />
                </div>
                <div class="form-group">
                    <label class="control-label">Owner Name</label>
                    <input maxlength="100" name="vendor_name" type="text" required="required" class="form-control" placeholder="Enter Last Name" />
                </div>
                 <div class="form-group">
                 
                    <label class="control-label">Experience</label>
                    <input maxlength="100" name="experience" type="text" required="required" class="form-control" placeholder="Enter Experience" />
                </div>
                 <div class="form-group">
                    <label class="control-label">Address</label>
                    <input maxlength="100"  name="address" type="text" required="required" class="form-control" placeholder="Enter address" />
                </div>
                <div class="form-group">
                  <label class="text-align left">Upload Image</label>
                <div class="input-group">
                   <span class="input-group-btn">
                   <span class="btn btn-default btn-file">
                    Browse..<input type="file" name="image" id="imgInp">
                </span>
            </span>
           
        </div>
        
    </div>
                <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
            </div>
        </div>
    </div>
    <div class="row setup-content" id="step-2">
        <div class="col-xs-12">
            <div class="col-md-12">
                <h3> Step 2</h3>
                <div class="form-group">
                    <label class="control-label">How many guests can you cater?</label>
                   <div class="radio">
                        <label><input type="radio" name="count" value="50">Less than 50</label>
                    </div>
                   <div class="radio">
                          <label><input type="radio"  value="100" name="count">51-100</label>
                     </div>
                     <div class="radio">
                          <label><input type="radio" value="200" name="count">101-200</label>
                     </div>
                  <div class="radio">
                               <label><input type="radio" name="count" value="500">201-500</label>
                    </div>
                    <div class="radio">
                               <label><input type="radio" name="count" value="1000">More than 500</label>
                    </div>
                    

                </div>
                <div class="form-group">
                    <label class="control-label">Type of food you can serve?</label>
                   <div class="radio">
                        <label><input type="radio"  value="veg" name="preference">Vegetarian</label>
                    </div>
                   <div class="radio">
                          <label><input type="radio" value="nonveg" name="preference">Veg and Non-veg</label>
                     </div>
                     
                </div>
                <div class="form-group">
                    <label class="control-label">Will you provide service catering?</label>
                   <div class="radio">
                        <label><input type="radio" value="yes" name="equipment">Yes</label>
                    </div>
                   <div class="radio">
                          <label><input type="radio"  value="no" name="equipment">No</label>
                     </div>
                    
                  
                </div>
                
                <button class="btn btn-success btn-lg pull-right" type="submit">Finish!</button>
            </div>
        </div>
    </div>
    
</form>
</div>

<script>
$(document).ready(function () {

    var navListItems = $('div.setup-panel div a'),
            allWells = $('.setup-content'),
            allNextBtn = $('.nextBtn');

    allWells.hide();

    navListItems.click(function (e) {
        e.preventDefault();
        var $target = $($(this).attr('href')),
                $item = $(this);

        if (!$item.hasClass('disabled')) {
            navListItems.removeClass('btn-primary').addClass('btn-default');
            $item.addClass('btn-primary');
            allWells.hide();
            $target.show();
            $target.find('input:eq(0)').focus();
        }
    });

    allNextBtn.click(function(){
        var curStep = $(this).closest(".setup-content"),
            curStepBtn = curStep.attr("id"),
            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
            curInputs = curStep.find("input[type='text'],input[type='url']"),
            isValid = true;

        $(".form-group").removeClass("has-error");
        for(var i=0; i<curInputs.length; i++){
            if (!curInputs[i].validity.valid){
                isValid = false;
                $(curInputs[i]).closest(".form-group").addClass("has-error");
            }
        }

        if (isValid)
            nextStepWizard.removeAttr('disabled').trigger('click');
    });

    $('div.setup-panel div a.btn-primary').trigger('click');
});
</script>

</body>
</html>