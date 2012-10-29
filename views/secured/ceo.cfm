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
        #includePartial("/partials/partialceo")#
    </section>
</cfoutput>