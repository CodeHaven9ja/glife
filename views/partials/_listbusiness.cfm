<cfoutput>
<div id="main-content" class="content span9">
        	<div id="inside">
                
	<div class="table-wrap">
    
    <h3>List of businesses owned by you</h3>
    
        <table class="table table-stripped table-bordered">
            <col class="span1">
            <col class="span3">
            <col class="span2">
            <thead>
                <tr>
                    <th>##</th>
                    <th>Name</th>
                </tr>
            </thead>
            
            <tbody>
                <cfloop query="getBusiness">
                    <tr>
                        <td>#getBusiness.id#</td>
                        <td>#getBusiness.name#</td>
                        <td>#linkTo(text="Edit")#</td>
                        <td>#linkTo(text="Delete")#</td>
                        <td>#linkTo(text="Transfer Business")#</td>
                    </tr>
                </cfloop>
            </tbody>
            
        </table>
    </div>
    </div>
    </div>
</cfoutput>