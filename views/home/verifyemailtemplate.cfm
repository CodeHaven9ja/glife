<cfoutput>
	<p>Hi #recipientName#</p>
    
    <p>
        We wanted to take a moment to thank you for joining our service
        and to confirm your start date.
    </p>
    <p>
        Click #linkTo(text="here", controller="secured", action="verify", key=emailVerificationCode)# to verify your account.
    </p>
    
</cfoutput>