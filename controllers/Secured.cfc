<cfcomponent extends="Controller" output="false">
	
	<cffunction name="init">
		<cfset filters(through="checkLogin, $checkVerify")>
	</cffunction>

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
		
	</cffunction>

	<cffunction name="uploadavatar">
		
		<cfset validFormats = "image/*">
		<cfif isDefined('uploadurlimage') AND uploadurlimage NEQ ''>
			<cfset ifolder8 = "profile">
			<cfset nifolder8 = ExpandPath("images/#ifolder8#")>
			<cfset TAB = Chr(9)>
				<cfif NOT DirectoryExists(nifolder8)>
					<cfdirectory action="create" directory="#nifolder8#" mode="777">
				</cfif>
			<cfset Path = nifolder8>
		</cfif>
		<cffile action="upload" filefield="uploadurlimage" accept="#validFormats#" destination="#Path#\" nameconflict="overwrite">
		<cfset sFile = cffile.serverFile>
		<cfset sFileExt = cffile.serverFileExt>
		<cffile action="rename" source="#Path#/#sFile#" destination="#path#/#session.user.id#.#sFileExt#">
		
		<!--- Resize image --->
		
		<cfset originalSize("#path#/#session.user.id#.#sFileExt#")>
		
		<cfset params.user.photourl = "#session.user.id#.#sFileExt#">
		<cfset user = model("user").findByKey(session.user.id)>
		<cfset user.update(params.user)>

		<cfset redirectTo(action="dash")>
	</cffunction>
	
	<cffunction name="checkRole">
		
		<!--- TODO: Factor roles here --->
        <!--- Also do option set --->
		
	</cffunction>
	
	<!--- Private functions --->
	
	<cffunction name="$findUser" access="private">
		
		<cfset user = model("user").findOneById(session.user.id)>
		
	</cffunction>
</cfcomponent>