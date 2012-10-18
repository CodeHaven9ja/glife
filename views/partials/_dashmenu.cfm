<cfoutput>
	<header>
        	<nav id="navigation" class="navbar">
            	<div class="navbar-inner">
                	<div class="container">
                    	<div id="logo" class="pull-left">
                        	<a href="/">#imageTag(source="logo.png")#</a>
                        </div><!-- Pull left -->
                        <ul class="nav pull-right">
                        	<li>#linkTo(text="Dashboard", route="profilePrivate", username="#user.urlid#")#</li>
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
                                	<li>#linkTo(route="settings", text="Change Picture", username="#user.urlid#", key="change-avi")#</li>
                                	<li>#linkTo(route="settings", text="Change Password", username="#user.urlid#", key="change-Password")#</li>
                                    <li>#linkTo(route="settings", text="Delete Account", username="#user.urlid#", key="delete-Account")#</li>
                                	<li>#linkTo(route="logoutPage", text="Logout")#</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
</cfoutput>