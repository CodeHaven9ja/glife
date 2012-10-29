<cfoutput>
	<section class="container ui-box">        
        <div class="span7 content register">
        	<h2>#flash("noProfile")#</h2>
        	#startFormTag(action="createProfile", id="uploadform")#
            
            	<h3>Upload a profile image</h3>
            
            		<input type="file" name="UploadPhoto" id="UploadPhoto" />
                	
                    <!---#textField(
                    label="Address",
                    objectName="user",
                    association="profile",
                    labelPlacement="before",
                    property="address"
                    )#
                    
                    #textField(
                    label="Description",
                    objectName="user",
                    association="profile",
                    labelPlacement="before",
                    property="about"
                    )#--->
                    
                    
                    
                    <!---<div>#submitTag(value="Create")#</div>--->
                    
            #endFormTag()#
            
            <img src="../../images/photo_not_available.png" id="PhotoPrev" alt="Photo Preview" />
            
            #startFormTag(action="createProfile", id="profileform", class="form-wrap")#
            	#hiddenField(objectName="user", property="id")#
                <input id="user-profile-photourl" name="user[profile][photourl]" type="hidden" value="">
                
                #textField(
                    label="Address",
                    objectName="user",
                    association="profile",
                    labelPlacement="before",
                    property="address"
                    )#
                #textArea(
                    label="Bio",
                    objectName="user",
                    association="profile",
                    labelPlacement="before",
                    property="about"
                    )#
                    
                <div>#submitTag(value="Complete")#</div>
                
            #endFormTag()#
            
        </div>
            
 	</section>
</cfoutput>