<cfparam name="user">
<cfoutput>
		<h2>Registration Form</h2>
		<div class="form-wrap">
		<cfif user.hasErrors()>
			<div class="alert alert-error">
			  #errorMessagesFor("user")#
			</div>
		</cfif>			
			
            	#startFormTag(action="create", class="regform")#
		            <ul>
		                <div id="userProfilePersonal" class="module">
                            <li class="row">
                            	<label for="user-firstname">First Name:</label><input id="user-firstname" name="user[firstname]" required="required" placeholder="First Name" class="bigtext" title="Enter your First name">
                            	<label for="user-lastname">Last Name:</label><input id="user-lastname" name="user[lastname]" required="required" placeholder="Last Name" class="bigtext" title="Enter your Last name">
                            </li>
                            
                            
                            <li class="row-select">
                                <label for="user-sex">Gender</label>
                                <select id="user-sex" name="user[sex]" title="Choose your gender">
                                    <option value="M">Male</option>
                                    <option value="F">Female</option>
                                </select>
                            </li>
                            
                        </div>
                        
                        <div id="userProfileDetail" class="module">
                            <li class="row">
                            <label for="user-email">Email:</label><input id="user-email" name="user[email]" type="email" placeholder="Your email address" required="required" class="bigtext" title="Enter your Email address">
                            </li>
                            <li class="row">
                            <label for="user-password">Password:</label><input id="user-password" name="user[password]" type="password" placeholder="Password" required="required" class="bigtext" title="Enter your Password">
                            </li>
                            <li class="row">
                            <label for="user-passwordConfirmation">Confirm your password:</label><input id="user-passwordConfirmation" name="user[passwordConfirmation]" type="password" placeholder="Retype password" required="required" class="bigtext" title="Confirm your password by typing it again">
                            </li>
                        </div>
                        
                        <div id="userProfileExtra" class="module">
                        	<li class="row"><h3>Reserve a personal id for your profile</h3></li>
                        	<li class="row"><label for="user-urlid">URL ID</label><p class="urlid">http://grand-life.com/</p><input id="user-urlid" name="user[urlid]" required="required" title="This allows for easy navigation to your profile page. For example: grand-life.com/profile/yourURLID"></li>
                            <li class="row"><label for="user-phone">Phone number</label><input id="user-phone" name="user[phone]" required="required" class="bigtext"></li>                        
                        </div>
                        
		            
                    
		            <div class="module">
                    <li class="row last">
                    <p>#linkTo(action="tos", text="I have read the licence agreement.")#<input type="checkbox" id="agree" required="required" title="Ensure that you have read and understood the agreement before clicking register"> <label for="agree"></label></p>
                    </li>
                    
                    <!--- TODO: Remember to disable the button back --->              
                    <li><button id="register-button">Register</button></li>
                    </div>
		            
		            
		        #endFormTag()#
                
                </ul>
            <div id="light-info">
            	<div class="light-reg-text">
                	<p>One <span>Light</span></p>
                    <p>One <span>Goal</span></p>
                    <p>One <span>Mind</span></p>
                    <p>Unlimited <span>Possibilities</span></p>
                    
                </div>
            </div>
		    </div>
</cfoutput>