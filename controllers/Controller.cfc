<!---
	This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->
<cfcomponent extends="Wheels">
	
	<cffunction name="init">
		
	</cffunction>
	
	<!--- Check login function --->
	
	<cffunction name="checkLogin">
		<cfif not StructKeyExists(session,"user")>
			<cfset redirectTo(controller="Home", action="login")>
		</cfif>
	</cffunction>
    
    <cffunction name="$checkVerify" access="private">
    	<!--- Checks to see if user account has been verified --->
        <cfset verified = model("user").findOne(session.user.id)>
        
        <cfif verified.confirmed EQ 1>
        	<cfset redirectTo(controller="Home", action="verify", key=session.user.id)>
        </cfif>
        
    </cffunction>
	
</cfcomponent>