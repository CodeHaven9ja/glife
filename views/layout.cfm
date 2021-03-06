<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Grand Life</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  #stylesheetLinkTag("reset, style, mediaqueries, http://fonts.googleapis.com/css?family=Scada,jquery.qtip.min")#
  <cfif params.controller EQ "home" and params.action EQ "login" OR params.action EQ "register">
  	#stylesheetLinkTag("kendo.common.min, kendo.default.min")#
  </cfif>
  <link href='http://fonts.googleapis.com/css?family=Average' rel='stylesheet' type='text/css'>
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
    <link rel="shortcut icon" href="/images/favicon.ico">
</head>

<body>
  <!-- header -->
  #includePartial("/partials/nav")#
  
  <cfif params.controller EQ "home" and params.action EQ "index">
  	#includePartial("/partials/gallery")#
  </cfif>
  
  <div class="main-box"><!-- /div.main-box -->
  <h1><a href="index.html">#imageTag("logo.png")#</a></h1>
    <div class="container"><!-- /div.container -->
      <div class="inside"><!-- /div.inside -->
        <div class="wrapper"><!-- div.wrapper -->
        	<cfif params.controller EQ "home" and params.action EQ "index">
			  #includePartial("/partials/homeaside")#
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
  
  <cfif get("environment") is "design">
  	#javascriptIncludeTag("jquery.min")#
  <cfelseif get("environment") is "development">
  	#javascriptIncludeTag("jquery.min")#
  <cfelse>
  	#javaScriptIncludeTag("https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")#
  </cfif>
  
  #javascriptIncludeTag("	jquery.qtip.min,
  							roundabout,
  							roundabout_shapes,
  							gallery_init,
                            app
  						")#
  <!--- <cfif params.controller EQ "home" and params.action EQ "login" OR params.action EQ "register">
  	#javascriptIncludeTag("kendo.web.min")#
  </cfif> --->
</body>
</html>

</cfoutput>