<cfoutput>
	<div id="main-content" class="content span9">
    	<div id="inside">        
        	<h2>You have not created any business</h2>
				#startFormTag(action="createBusiness")#
                	<div class="span4">
                    	<div class="row">
                        	#textField(objectName="user", association="business", property="name", label="Business Name", labelPlacement="before")#
                        </div>
                        
                    	<div class="row">
                        	<label for="newBusiness-categoryid">Business Category</label>
                        	<select id="newBusiness-categoryid" class="my-select" name="newBusiness[categoryid]">
                            	<cfloop query="#categories#">
                                	<option value="#categories.id#">#categories.name#</option>
                                </cfloop>
                            </select>
                        </div>
                        <div class="row">#submitTag(value="Create")#</div>
                    </div>
                #endFormTag()#
            
        </div>
    </div>
        	
</cfoutput>