<cfcomponent extends="Controller" output="false">
	
	<cffunction name="index">
		
		<cfset user = model("user").new()>
		
		<cfset pageTitle = "Social Trading">
				
	</cffunction>
	
	<!--- Signin Function--->	
	<cffunction name="Signin">
		<cfset pageTitle = "Login">
        
		<cfset user = model("user").findOneByEmail(params.user.email)>
		<cfif isObject(user) AND user.authenticate(params.user.password)>
        	<cfset password = user.authenticate(params.user.password)>
			<cfset session.user.id = user.id>
			<cfset session.user.role = user.role>
			<cfset redirectTo(route="profilePrivate", username=user.urlid)>
		<cfelse>
			<cfset user = model("user").new(username=params.user.email)>
			<cfset flashInsert(error="Login credentials invalid.")>
			<cfset renderPage(action="login")>
		</cfif>
	</cffunction> 
	
	<cffunction name="Register">
		<cfset user = model("user").new()>
		
		<cfset pageTitle = "Social Trading">
	</cffunction>
	
	<cffunction name="create">
		
		<!--- If no User struct in the params, redirect --->

        
		<cfif NOT structKeyExists(params, 'user')>
			<cfset redirectTo(action="register") />
		</cfif>
                
        <cfset params.user.role = 3 >
		
		<cfset user = model("user").new(params.user) />
		
		<!--- Save the user --->
        
			<cfif user.save()>
            
            
			<!--- Success Message --->
            
			    <cfset flashInsert(success="#user.firstname# was created successfully.") />
                
                <!--- Send Email --->
                
                <cfset userFullName = #user.firstname# & " " & #user.lastname#>
                
                <cfset sendEmail(
					from="webmaster@testinggrounds.tk",
					to=user.email,
					subject = "Your account has been successfully created.",
					recipientName=userFullName,
					startDate=user.createdAt,
					template = "successEmailTemplate"
					
				)>
				
				<!--- Redirect --->
	            <cfset redirectTo(action="success", controller="home") />
				
	        <!--- Handle errors --->
	        <cfelse>
	        
	        <cfset pageTitle = "Social Trading">
	        	<!--- Clear the attempted password --->
				<cfset user.password ="" />
				<cfset user.passwordCofirmation ="" />
				
				<!--- Render View --->
	            <cfset renderPage(action="register") />
	        </cfif>
	</cffunction>
	<cffunction name="success">
		<cfset pageTitle = "Success">
		<cfif not flashKeyExists("success")>
			<cfset redirectTo(action="login")>
		</cfif>
	</cffunction>
    
    <cffunction name="verify">
    	<cfset user = model("user").findOneByID(params.key)>
    </cffunction>
    
    <cffunction name="resendEmailVerification">
    
    	<cfset user = model("user").findOneByID(params.key)>
        <cfset userFullName = #user.firstname# & " " & #user.lastname#>
        
        <cfset sendEmail(
					from="webmaster@testingground.tk",
					to=user.email,
					subject = "Your account verification link.",
					recipientName=userFullName,
					emailVerificationCode=user.emailconfirmationtoken,
					template = "verifyEmailTemplate"
					
				)>
        <cfset redirectTo(action="logout")>
    </cffunction>
	
	<cffunction name="login">
		<cfset pageTitle = "Login">
	</cffunction>
	
	<cffunction name="logout">
		<cfset structDelete(session, "user")>
		<cfset redirectTo(route="home")>
	</cffunction>	
    
    <cffunction name="publicProfile">
    	<cfset user = model("user").findOneByUrlID(params.username)>
    </cffunction>
    
</cfcomponent>