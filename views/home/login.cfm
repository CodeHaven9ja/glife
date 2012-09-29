<cfoutput>
	
	<div class="form-wrap">
    	<h2>Welcome to <span>Grand Life</span></h2>
		<ul>
			<li>
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
                                    <input id="user-email" name="user[email]" type="email" placeholder="Your email address">
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
            </li>
            <li>		
                <div class="registration">
                    <form>
                        <ul>
                            <li><label for="fname">First Name:</label><input id="fname" data-bind="value: firstName"></li>
                            <li><label for="lname">Last Name:</label><input id="lname" data-bind="value: lastName"></li>
                            <li><label for="gender">Gender:</label><select id="gender" data-bind="source: genders, value: gender"><option>Male</option><option>Female</option></select></li>
                        </ul>
                        <input type="checkbox" id="agree" data-bind="checked: agreed"> <label for="agree">I have read the licence agreement</label>
                        <br><br>
                        <button data-bind="enabled: agreed, click: register" style="display: block" disabled="disabled">Register</button>
                    </form>
                </div>
            </li>
        </ul>

</cfoutput>