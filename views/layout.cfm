<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Grand Life</title>
  <meta charset="utf-8">
  #stylesheetLinkTag("reset, style, mediaqueries")#
  <cfif params.controller EQ "home" and params.action EQ "login">
  	#stylesheetLinkTag("kendo.common.min, kendo.default.min")#
  </cfif>
  <!--[if lt IE 7]>
  	<link rel="stylesheet" href="stylesheets/ie/ie6.css" type="text/css" media="all">
  <![endif]-->
  <!--[if lt IE 9]>
  	<script type="text/javascript" src="js/html5.js"></script>
    <script type="text/javascript" src="js/IE9.js"></script>
  <![endif]-->
  	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
</head>

<body>
  <!-- header -->
  #includePartial("/partials/nav")#
  
  <cfif params.controller EQ "home" and params.action EQ "index">
  	#includePartial("/partials/gallery")#
  </cfif>
  
  <div class="main-box"><!-- /div.main-box -->
    <div class="container"><!-- /div.container -->
      <div class="inside"><!-- /div.inside -->
        <div class="wrapper"><!-- div.wrapper -->
        	<cfif params.route EQ "home">
			  #includePartial("/partials/homeAside")#
			</cfif>
          <!-- section##content -->
          <section id="content">
          	#includeContent()# 
          </section><!-- /section##Content -->
        </div><!-- /div.wrapper -->
      </div><!-- /div.inside -->
    </div><!-- /div.container -->
  </div><!-- /div.main-box -->
  <!-- footer -->
  <footer>
    	#includePartial("/partials/footer")#
  </footer>
  #javascriptIncludeTag("	jquery.min,
  							cufon-yui,
  							Humanst521_BT_400.font,
  							Humanst521_Lt_BT_400.font,
  							roundabout,
  							roundabout_shapes,
  							gallery_init,
  							cufon-replace
  						")#
  <cfif params.controller EQ "home" and params.action EQ "login">
  	#javascriptIncludeTag("kendo.web.min")#
  </cfif>
  <script type="text/javascript"> Cufon.now(); </script>
</body>
</html>

</cfoutput>