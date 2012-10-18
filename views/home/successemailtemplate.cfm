<cfoutput>
	<p>Hi #recipientName#</p>
    
    <p>
        We wanted to take a moment to thank you for joining our service
        and to confirm your start date.
    </p>
    <p>
        Our records indicate that your membership will begin on
        <strong>#DateFormat(startDate, "dddd, mmmm, d, yyyy")#</strong>.
    </p>
    
    <p>
    	
        Click <a href="http://testingground.tk?controller=home&action=verify-action&key=#emailVerificationCode#">Here</a> to verify your account.
    </p>
    
</cfoutput>