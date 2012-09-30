<cfoutput>
	
	<div class="form-wrap">
    <h2>Welcome to <span>Grand Life</span></h2>
            <cfif flashKeyExists("error")>
                <div class="alert alert-block alert-error">
                    <h4 class="class="alert-heading"">Error</h4>
                    <p>#flash("error")#</p>
                </div>
            </cfif>
                #startFormTag(action="Signin")#
                    <ul>
                        <li>
                            <span>
                                <input id="user-email" name="user[email]" type="email" placeholder="Your email address" required="required">
                            </span>
                        </li>
                        
                        <li>
                            <span>
                                <input id="user-password" type="password" name="user[password]" placeholder="Password" required="required">
                            </span>
                        </li>
                        
                        <li>
                            <button type="submit">Sign In</button>
                        </li>                        
                    </ul>       			
                #endFormTag()#
                
                <div>
                    <a href="##">Forgot Your password?</a>
                    #linkTo(action="register", text="New User", class="register")#
                </div>
                
            </div>
</cfoutput>