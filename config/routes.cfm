<cfset addRoute(name="contact", pattern="/contact", controller="home", action="contact")>
<cfset addRoute(name="loginPage", pattern="/Login", controller="home", action="login")>
<cfset addRoute(name="news", pattern="/news", controller="home", action="getNews")>
<cfset addRoute(name="about", pattern="/about", controller="home", action="about")>
<cfset addRoute(name="home", pattern="", controller="home", action="index")>
