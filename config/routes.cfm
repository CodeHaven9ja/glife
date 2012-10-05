<!--- Profile Routes --->
<cfset addRoute(name="profilePrivate", pattern="/dashbord/[username]", controller="secured", action="dash")>
<cfset addRoute(name="profilePublic", pattern="/[username]", controller="home", action="publicProfile")>

<cfset addRoute(name="contact", pattern="/contact", controller="home", action="contact")>
<cfset addRoute(name="loginPage", pattern="/Login", controller="home", action="login")>
<cfset addRoute(name="news", pattern="/news", controller="home", action="getNews")>
<cfset addRoute(name="about", pattern="/about", controller="home", action="about")>
<cfset addRoute(name="home", pattern="", controller="home", action="index")>
