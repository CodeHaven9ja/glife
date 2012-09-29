<cfoutput>
	
	<div class="form-wrap">
		<cfif flashKeyExists("error")>
            <div class="alert alert-block alert-error">
                <h4 class="class="alert-heading"">Error</h4>
                <p>#flash("error")#</p>
            </div>
        </cfif>
            #startFormTag(action="Signin")#
                <ul class="forms" id="slick-login">
                    <li>
                        <span>
                            <input id="user-email" name="user[email]" type="email" placeholder="Email">
                        </span>
                    </li>
                    
                    <li>
                        <span>
                            <input id="user-password" type="password" name="user[password]" placeholder="Password">
                        </span>
                    </li>
                    
                    <li>
                        <button type="submit">Sign In</button>
                    </li>
                    
                    <li>
                        <a href="##">Forgot Your password?</a>
                        #linkTo(action="register", text="New User", class="register")#
                    </li>
                    
                </ul>       			
            #endFormTag()#
        </div>

</cfoutput>