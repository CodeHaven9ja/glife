<cfoutput>
	<!-- Info Dash -->
        #includePartial("/partials/infodash")#
    <!-- /Info Dash -->
	<section class="container main ui-box">
        <aside>
            <ul class="dash-menu">
            	#includePartial("/partials/dashfunctionmenu")#
            </ul>
        </aside>
        <cfif business neq 0>
        	#includePartial("/partials/listbusiness")#
        <cfelse>
        	#includePartial("/partials/partialceonull")#
        </cfif>
    </section>
</cfoutput>