<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Grand Life</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="stylesheets/reset.css" type="text/css" media="all">
  <link rel="stylesheet" href="stylesheets/style.css" type="text/css" media="all">
  <script type="text/javascript" src="javascripts/jquery-1.4.2.min.js" ></script>
  <script type="text/javascript" src="javascripts/cufon-yui.js"></script>
  <script type="text/javascript" src="javascripts/Humanst521_BT_400.font.js"></script>
  <script type="text/javascript" src="javascripts/Humanst521_Lt_BT_400.font.js"></script>
  <script type="text/javascript" src="javascripts/roundabout.js"></script>
  <script type="text/javascript" src="javascripts/roundabout_shapes.js"></script>
  <script type="text/javascript" src="javascripts/gallery_init.js"></script>
  <script type="text/javascript" src="javascripts/cufon-replace.js"></script>
  <!--[if lt IE 7]>
  	<link rel="stylesheet" href="stylesheets/ie/ie6.css" type="text/css" media="all">
  <![endif]-->
  <!--[if lt IE 9]>
  	<script type="text/javascript" src="js/html5.js"></script>
    <script type="text/javascript" src="js/IE9.js"></script>
  <![endif]-->
</head>

<body>
  <!-- header -->
  #includePartial("/partials/nav")#
  
  <cfif params.route EQ "home">
  	#includePartial("/partials/gallery")#
  </cfif>
  
  <div class="main-box">
    <div class="container">
      <div class="inside">
        <div class="wrapper">
        	<cfif params.route EQ "home">
			  #includePartial("/partials/homeAside")#
			</cfif>
          <!-- content -->
          <section id="content">
            <article>
            	<h2>Welcome to <span>Pixel99</span></h2>
              <p>The term Pixel denotes the tiniest individual  area of an image on a display screen which when viewed collectively forms a  vivid and clear picture.</p>
              <figure><a href="##"><img src="images/banner1.jpg" alt=""></a></figure>
              <p>And the numeric symbol 9  represents the highest single number, surpassed by no other in the number  series.</p>
Put together, the PIXEL99 initiative is a Renowned  company known for creating and displaying extremely high quality Multimedia  products</article> 
          </section>
        </div>
      </div>
    </div>
  </div>
  <!-- footer -->
  <footer>
    <div class="container">
    	<div class="wrapper">
        <div class="fleft"><a href="index.html">www.pixel99initiative.com</a></div>
        <div class="fright"></div>
      </div>
    </div>
  </footer>
  <script type="text/javascript"> Cufon.now(); </script>
</body>
</html>

</cfoutput>