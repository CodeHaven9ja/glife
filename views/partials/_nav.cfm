<cfoutput>

	<header>
	    <div class="container">
	    	<h1><a href="index.html"><img src="images/logo.png" width="170" height="58" longdesc="index.html"></a></h1>
	      <nav>
	        <ul>
	          <li>#linkTo(route="home", text="Home", class="current")#</li>
	          <li>#linkTo(route="about", text="About")#</li>
	          <li>#linkTo(route="news", text="News")#</li>
	          <li>#linkTo(route="loginPage", text="Login")#</li>
	          <li>#linkTo(route="contact", text="Contact")#</li>
	          
	        </ul>
	      </nav>
	    </div>
	</header>

</cfoutput>