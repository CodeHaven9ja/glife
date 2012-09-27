<cfoutput>
	<div class="span9 cat-inner">
	<cfif flashKeyExists("error")>
		<div class="alert alert-block alert-error">
			<h4 class="class="alert-heading"">Error</h4>
			<p>#flash("error")#</p>
		</div>
	</cfif>
		#startFormTag(action="Signin")#
			<ul class="forms">
				<li>
		            <input class="k-textbox" id="user-email" name="user[email]" type="email" placeholder="Email">
				</li>
				
				<li>
		            <input class="k-textbox" id="user-password" type="password" name="user[password]" placeholder="Password">
				</li>
				
				<li>
					<button type="submit" class="btn btn-success" rel="tooltip" title="first tooltip">Sign In</button>
				</li>
				
			</ul>       
			
			<a href="##">Forgot Your password?</a>
			#linkTo(action="register", text="New User?", class="register")#
		#endFormTag()#
	</div>
</cfoutput>