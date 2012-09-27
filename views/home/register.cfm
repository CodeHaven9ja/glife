<cfparam name="user">
<cfoutput>
		<cfif user.hasErrors()>
			<div class="alert alert-error">
			  #errorMessagesFor("user")#
			</div>
		</cfif>			
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
</cfoutput>