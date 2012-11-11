<cfcomponent extends="Controller" output="false">
    <cffunction name="init">
        <cfset filters(through="checkLogin, $checkVerify")>
        <cfset provides("html,json")>
    </cffunction>
    
    <cffunction name="index">
    	<!---<cfdump var="#params#" abort=true>--->
			<cfset ifolder8 = "profile">
			<cfset nifolder8 = ExpandPath("images/#ifolder8#/#session.user.id#")>
			<cfset TAB = Chr(9)>
				<cfif NOT DirectoryExists(nifolder8)>
					<cfdirectory action="create" directory="#nifolder8#" mode="777">
				</cfif>
			<cfset Path = nifolder8>
		
		<cffile action="upload" filefield="Filedata" destination="#Path#/" nameconflict="overwrite">
		<cfset sFile = cffile.serverFile>
		<cfset sFileExt = cffile.serverFileExt>
        <cfset params.user.photourl = "#session.user.id#.#sFileExt#">
		<cfset user = model("user").findByKey(session.user.id)>
		<cfset user.update(params.user)>
    	<cfset ok = 1>
    </cffunction>
    
    <cffunction name="upload">
    	<!---<cfdump var="#params#" abort=true>--->
			<cfset ifolder8 = "profile">
			<cfset nifolder8 = ExpandPath("images/#ifolder8#/#session.user.id#")>
			<cfset TAB = Chr(9)>
				<cfif NOT DirectoryExists(nifolder8)>
					<cfdirectory action="create" directory="#nifolder8#" mode="777">
				</cfif>
			<cfset Path = nifolder8>
		
		<cffile action="upload" filefield="Filedata" destination="#Path#/" nameconflict="overwrite">
		<cfset sFile = cffile.serverFile>
		<cfset sFileExt = cffile.serverFileExt>
        <cfset params.user.photourl = "#session.user.id#.#sFileExt#">
		<cfset user = model("user").findByKey(session.user.id)>
		<cfset user.update(params.user)>
    	<cfset ok = 1> 
        
    </cffunction>
    
</cfcomponent>