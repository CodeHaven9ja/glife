<cfcomponent extends="Controller" output="false">
	
	<cffunction name="init">
		<cfset filters(through="checkLogin, $checkVerify")>
        <cfset provides("html,json")>
	</cffunction>
    <!--- Controller code --->

	<cffunction name="dash">
		
		<!--- TODO: Use below comment to make validate function in sscc plugin --->
		
		<!--- <cfset number = generateSsccAsn(serialSequence='000000002', distributorId='223456')>
		<cfset number = right(number, 16)>
		<cfset number = left(number, 6)>
		<cfdump var="#right(number, 16)#" abort="true"> --->
		
		<cfset pageTitle = "Dashboard">
		
		<!--- RESTful call --->
		
		<!--- TODO: Implement API key --->
		<cfset $findUser()>
        
        <cfif user.profile.id EQ "">
        	<cfset flashInsert(noProfile="Please complete your profile.")>
        	<cfset redirectTo(action="editProfile")>
        </cfif>
		
	</cffunction>
    
    <cffunction name="ceo">
    	<cfset pageTitle = "Ceo">
        <cfset $findUser()>
        <!--- set business fetch flow --->
        <cfset $findBusines()>
        <cfset $findCat()>        
    </cffunction>
    
    <cffunction name="getBusiness">
    	<cfset pageTitle = "Busines">
        <cfset $findUser()>
        <!--- set business fetch flow --->
        <cfset $findBusines()>    
    </cffunction>
    
    <cffunction name="createBusiness">
    	<cfset params.newbusiness.userid = #session.user.id#>
        <cfset params.newbusiness.ceoid = #session.user.id#>
    	<cfset newBusiness = model("business").new(params.newbusiness)>
        
        <cfif newBusiness.save()>
        	<cfset redirectTo(action="ceo")>
        </cfif>
        
    </cffunction>
    
    <cffunction name="editProfile">
    	<cfset pageTitle = "Welcome">
        <cfset $findUser()>
    </cffunction>
    
    <cffunction name="createProfile">
    	<cfset user = model("user").findOneByID(params.user.id)>
        <cfset user.update(params.user)>
    	<cfset redirectTo(action="dash")>
    </cffunction>
        
    <cffunction name="settings">
    	<cfswitch expression="#params.key#">
        	<cfcase value="change-password">
            	<cfset pageTitle = "Change Your password">
            </cfcase>
            <cfcase value="delete-account">
            	<cfset user = model("user").findOneByID(session.user.id)>
                <cfset user.delete()>
                <cfset redirectTo(route="logoutPage")>
            </cfcase>
        </cfswitch>
        
        <cfset $findUser()>
        
    </cffunction>
	
	<cffunction name="checkRole">
		
		<!--- TODO: Factor roles here --->
        <!--- Also do option set --->
		
	</cffunction>
    
    
	
	<!--- Private functions --->
	
	<cffunction name="$findUser" access="private">
		
		<cfset user = model("user").findOne(where="id='#session.user.id#'", include="profile")>
		
	</cffunction>
    
    <cffunction name="$findBusines">
    	<cfset business = model("business").count(where="ceoid='#session.user.id#'", include="branches")>
    	<cfif #business# eq 0>
            <cfset newBusiness = model("business").new()>
        <cfelse>
        	<cfset getBusiness = model("business").findAll(where="ceoid='#session.user.id#'", include="branches, category")>
        </cfif>    
    </cffunction>
    
    <cffunction name="$findCat">
    	<cfset categories = model("category").findAll()>        
    </cffunction>
    
</cfcomponent>