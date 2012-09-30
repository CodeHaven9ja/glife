<cfcomponent extends="Model" output="false">
	<cffunction name="init">
		
		<!--- associations --->
		
		<cfset hasMany("products")>
		
		<!--- Validation --->
		<cfset beforeCreate("setEmailConfirmationToken")>
        <cfset beforeSave("sanitize,securePassword,createPasswordResetToken")>
		<cfset beforeValidation("setSalt")>
        
		<cfset validatesPresenceOf("firstname,lastname,email,password,sex")>
		<cfset validatesUniquenessOf("email")>
		<cfset validatesFormatOf(property="email", type="email")>
		<cfset validatesLengthOf(property="firstname", maximum=45, minimum=2)>
		<cfset validatesLengthOf(property="lastname", maximum=45, minimum=2)>
		<cfset validatesLengthOf(property="email", maximum=127)>
        <cfset validatesFormatOf(property="password", regEx="^.*(?=.{8,})(?=.*\d)(?=.*[a-z]).*$", message="Your password must be at least 8 characters long and contain a mixture of numbers and letters.")>
		<cfset validatesConfirmationOf(property="password", message="Your password does not match the confirmation.")>
        
        <cfset automaticValidations(false)>
		
	</cffunction>
    
    <!--- Private Functions --->
    
    <cffunction name="sanitize" access="private">
    	<cfset this.name = HtmlEditFormat(this.firstname)>
        <cfset this.name = HtmlEditFormat(this.lastname)>
    </cffunction>
    
 
    
	<cfscript>
	
	/**
	 * @hint Sets the salt property for the password.
	 */
		private void function setSalt() {
			if ( StructKeyExists(this, "passwordConfirmation") ) {
				this.salt = GenerateSecretKey("AES", 256);
				this.save();
			}
		}
	
	/*
	 * @hint Secures the password property before saving it.
	 */
		private void function securePassword() {
			if ( StructKeyExists(this, "passwordConfirmation") ) {
				this.password = hashPassword(this.password, this.salt);	
			}
		}
	
		/*
	 * @hint Hashes a password string.
	 */
		private string function hashPassword(required string password, required string salt) {
			for (var i = 1; i <= 1024; i++) {
				arguments.password = Hash(arguments.password & arguments.salt, "SHA-512");
			}
			return arguments.password;
		}
	</cfscript>

    

    

	<cffunction name="setEmailConfirmationToken" access="private">
		<cfset this.emailConfirmationToken = generateToken()>
	</cffunction>
    
	<!---
	/**
	 * @hint Creates a password reset token
	 */
	 --->
	<cffunction name="createPasswordResetToken">
		<cfset this.passwordResetToken = generateToken()>
		<cfset this.passwordResetAt = Now()>
		<cfset this.save()>
	</cffunction>

	<!---
	/*
	 * @hint Convenience method to blank user password.
	 */
	 --->
	<cffunction name="passwordToBlank">
		<cfif StructKeyExists(this, "password")> 
        	<cfset this.password = "">
        </cfif>
		<cfif  StructKeyExists(this, "passwordConfirmation")> 
           	<cfset this.passwordConfirmation = "">
        </cfif>    
	</cffunction>

	<!---
	/**
	 * @hint Generates a random token.
	 */
	 --->
	<cffunction name="generateToken">
		<cfreturn Replace(LCase(CreateUUID()), "-", "", "all")>
	</cffunction>
    
</cfcomponent>