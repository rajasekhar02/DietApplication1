<html>
    <head>
        
  <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
  <title>DietMng</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style>
    
.mySlides {display:none;}
</style>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/2.27.2/css/uikit.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/2.27.2/js/uikit.min.js"></script>
  
</head>
   <body background="images/home.jpg">
<!--        <div class="container">
    <div style="background:transparent !important" class="jumbotron">
        <center><h1 style="font-family:comic;"><font color="white">DIET MANAGEMENT SYSTEM</font></h1>
           <ul class="uk-navbar-nav uk-visible-large">
               <li> <a href="home.jsp" class="uk-button uk-button-primary"> Home </a></li>
               <li><a href="adminlogin.jsp" class="uk-button uk-button-primary">Admin</a></li>
               <li><a href="userlogin.jsp" class="uk-button uk-button-primary">User</a></li>
               <li><a href="dieticianlogin.jsp" class="uk-button uk-button-primary">Dietician</a></li>
</ul>
            </center>-->
<nav class="tm-navbar uk-navbar uk-navbar-attached">
            <div class="uk-container uk-container-center">

                <a class="uk-navbar-brand uk-hidden-small" href="home.jsp"><img class="uk-margin uk-margin-remove" src="images/apple.svg" width="35" height="13" title="Diet Management" alt="UIkit"></a>

                <ul class="uk-navbar-nav uk-hidden-small">
                    <li><a href="docs/documentation_get-started.html">Diet Management</a></li>
                    <li><a href="docs/documentation_get-started.html">Get Started</a></li>
                    <li><a href="docs/core.html">Core</a></li>
                    <li><a href="docs/components.html">Components</a></li>
                    <li><a href="docs/customizer.html">Customizer</a></li>
                    <li><a href="showcase/index.html">Showcase</a></li>
                    <li><a href="docs/tutorials.html">Tutorials</a></li>
                    <li><a href="docs/uikit3.html">UIkit 3</a></li>
                </ul>

                <a href="#tm-offcanvas" class="uk-navbar-toggle uk-visible-small" data-uk-offcanvas=""></a>

                <div class="uk-navbar-brand uk-navbar-center uk-visible-small"><img src="docs/images/logo_uikit.svg" width="90" height="30" title="UIkit" alt="UIkit"></div>

            </div>
        </nav>
<style>
#bubblebox{ width:400px; height:400px; margin:50px auto; border:0px solid #AAA; }
#bubbles{ width:auto; margin:0px auto; text-align:center; }
#bubbles > div{ display:inline-block; width:10px; height:10px; margin:24px 10px 0px 10px; background:rgba(0,0,0,.1); text-align:center; border:2px solid #999; border-radius:100%; font-size:17px; text-decoration:none; transition: background 0.3s linear 0s; cursor:pointer; }
#bubblecontent{ margin:0px auto; transition:opacity 0.3s linear 0s; font-family: Arial;}
#bubblecontent > img{ text-align:center; }
</style>
<script>
// This simple function returns object reference for elements by ID
function _(x){return document.getElementById(x);}
// Variables for bubble array, bubble index, and the setInterval() variable
var ba, bi=0, intrvl;
// bca - Bubble Content Array. Put your content here.
var bca = [
    '<img src="images/keep.jpg">',
	'<img src="images/easyway.jpg">',
	'<img src="images/schedule.jpg">',
	'<img src="images/keep.jpg">'
];
// This function is triggered by the bubbleSlide() function below
function bubbles(bi){
	// Fade-out the content
	_("bubblecontent").style.opacity = 0;
	// Loop over the bubbles and change all of their background color
	for(var i=0; i < ba.length; i++){
		ba[i].style.background = "rgba(0,0,0,.1)";
	}
	// Change the target bubble background to be darker than the rest
	ba[bi].style.background = "#999";
	// Stall the bubble and content changing for just 300ms
	setTimeout(function(){
		// Change the content
		_("bubblecontent").innerHTML = bca[bi];
		// Fade-in the content
		_("bubblecontent").style.opacity = 1;
	}, 300);
}
// This function is set to run every 5 seconds(5000ms)
function bubbleSlide(){
	bi++; // Increment the bubble index number
	// If bubble index number is equal to the amount of total bubbles
	if(bi === ba.length){
		bi = 0; // Reset the bubble index to 0 so it loops back at the beginning
	}
	// Make the bubbles() function above run
	bubbles(bi);
}
// Start the application up when document is ready
window.addEventListener("load", function(){
	// Get the bubbles array
	ba = _("bubbles").children;
	// Set the interval timing for the slideshow speed
	intrvl = setInterval(bubbleSlide, 4000);
});
</script>
<div id="bubblebox">
  <div id="bubbles">
    <div onclick="bubbles(0); clearInterval(intrvl);" style="background:#999;"></div>
    <div onclick="bubbles(1); clearInterval(intrvl);"></div>
    <div onclick="bubbles(2); clearInterval(intrvl);"></div>
    <div onclick="bubbles(3); clearInterval(intrvl);"></div>
  </div>
  <div id="bubblecontent">
  <img src="images/keep.jpg">
  </div>
</div>
<br><br><br></div><br><br>      
</body>
</html>