<!--- Profile Routes --->

<cfset addRoute(name="profilePublic", pattern="/profile/[username]", controller="home", action="publicProfile")>

<cfset addroute(name="settings", pattern="/dashboard/settings/[username]/[key]", controller="secured", action="settings")>
<cfset addRoute(name="profilePrivate", pattern="/dashboard/[username]", controller="secured", action="dash")>

<cfset addRoute(name="contact", pattern="/contact", controller="home", action="contact")>
<cfset addRoute(name="loginPage", pattern="/login", controller="home", action="login")>
<cfset addRoute(name="logoutPage", pattern="/logout", controller="home", action="logout")>
<cfset addRoute(name="news", pattern="/news", controller="home", action="getNews")>
<cfset addRoute(name="about", pattern="/about", controller="home", action="about")>




<cfset addRoute(name="home", pattern="", controller="home", action="index")>
