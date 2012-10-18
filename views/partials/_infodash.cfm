<cfoutput>
	<section style="margin-bottom:-10px;" class="container ui-box info">
        <div class="ui-box-content-holder ui-box-no-header">
            <div id="avi" class="span3">
                <div class="profileimg">
					<cfif user.profile.photourl neq "">
                        #imageTag(source="/profile/#session.user.id#/#user.profile.photourl#")#
                    <cfelse>
                        #imageTag(source="placeholder.jpg")#
                    </cfif>
                </div>
            </div>
            <div id="title" class="span7">
                <h2>Welcome <span>#user.firstname#</span></h2>
            </div>
        </div>
    </section>
</cfoutput>