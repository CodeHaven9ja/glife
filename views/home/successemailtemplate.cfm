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
    
</cfoutput>