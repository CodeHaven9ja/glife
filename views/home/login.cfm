<cfoutput>
	
	<div class="form-wrap">
    <h3>
    	Grand Life
    	<span>Be a light and be lighted</span>
    </h3>
    	
            <cfif flashKeyExists("error")>
                <div class="alert alert-block alert-error">
                    <h4 class="class="alert-heading"">Error</h4>
                    <p>#flash("error")#</p>
                </div>
            </cfif>
                #startFormTag(action="Signin", class="regform")#
                    <ul>
                        <li class="row">
                            <span>
                                <input id="user-email" name="user[email]" type="email" placeholder="Your email address" required="required" class="bigtext" title="Enter your email">
                            </span>
                        </li>
                        
                        <li class="row">
                            <span>
                                <input id="user-password" type="password" name="user[password]" placeholder="Password" required="required" class="bigtext" title="Enter your password">
                            </span>
                        </li>
                        
                        <li class="row">
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