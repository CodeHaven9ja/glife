<cfoutput>
	<h2>#user.firstname#, your account is not verified</h2>
	<p>Please check your email address of your verification link.</p>
    <p>If you did not receive such link, please check your junk/spam folder.</p>
    <p>#linkTo(text="Click here", action="resendEmailVerification", key=user.id)# to send the email verification link again.</p>
</cfoutput>