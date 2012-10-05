<cfoutput>
<!--- Place HTML here that should be used as the default layout of your application --->
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
	    <title>Grand Life | #pageTitle#</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">
		#stylesheetLinkTag("dash, customdash")#
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
	      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
	</head>
	<body id="index" data-spy="scroll" data-target=".ui-sidebar">
		<header>
        	<nav id="navigation" class="navbar">
            	<div class="navbar-inner">
                	<div class="container">
                    	<div id="logo" class="pull-left">
                        	<a href="/"><img src="../../images/logo.png"></a>
                        </div><!-- Pull left -->
                        <ul class="nav pull-right">
                        	<li>#linkTo(text="Dashboard")#</li>
                            <li class="divider-vertical"></li>
                            <li>#linkTo(text="Wallet")#</li>
                            <li class="divider-vertical"></li>
                            <li class="dropdown">
                            	<a href="##" data-toggle="dropdown" class="dropdown-toggle">Grand Life <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                	<li>#linkTo(text="About Us")#</li>
                                    <li>#linkTo(text="Board room")#</li>
                                    <li>#linkTo(text="News")#</li>
                                </ul>
                            </li>
                            <li class="divider-vertical"></li>
                            <li> #linkTo(text="Help")#</li>
                            <li class="divider-vertical"></li>
                            <li class="dropdown">
                            	<a href="##" data-icon="g" data-toggle="dropdown" class="dropdown-toggle">
                                <span>#user.urlid#</span>
                                <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                	<li>#linkTo(route="logoutPage", text="Logout")#</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div id="main">
        	<section style="margin-bottom:-10px;" class="container ui-box info">
            	<div class="ui-box-content-holder ui-box-no-header">
                	<div id="avi" class="span3"><img src="../../images/placeholder.jpg"></div>
                    <div id="title" class="span7">
                    	<h2>Welcome <span>#user.firstname#</span></h2>
                    </div>
                </div>
            </section>
        	<section class="container ui-box">
            </section>
        </div>
        <footer>
        </footer>
		<cfif get("environment") is "design">
			#javascriptIncludeTag("jquery.min")#
		<cfelse>
			#javaScriptIncludeTag("https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js")#
		</cfif>
		#javaScriptIncludeTag("bootstrap.min")#

	</body>
</html>
</cfoutput>