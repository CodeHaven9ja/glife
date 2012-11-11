<cfoutput>
	<section class="container ui-box">        
        <div class="span7 content register">
        	<h2>#flash("noProfile")#</h2>
        	#startFormTag(controller="misc", enctype="multipart/form-data",action="upload", id="uploadform")#
            
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
                    
                    
                    
   
                    
            #endFormTag()#
            
            <img src="../../images/photo_not_available.png" id="PhotoPrev" alt="Photo Preview" class="img-polaroid" />
            
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
                #textField(
                    label="City/Province",
                    objectName="user",
                    association="profile",
                    labelPlacement="before",
                    property="city"
                    )#
                #textField(
                    label="LGA/County",
                    objectName="user",
                    association="profile",
                    labelPlacement="before",
                    property="county"
                    )#
                #textField(
                    label="State",
                    objectName="user",
                    association="profile",
                    labelPlacement="before",
                    property="State"
                    )#
                #textField(
                    label="Date of birth",
                    objectName="user",
                    association="profile",
                    labelPlacement="before",
                    property="dob",
                    id="dp1"
                    )#
                    
                <!---TODO: This is going to be dependent on the user's country. Remove Hardcoded lines soon---> 
                <label class="radio">
                  <input type="radio" name="user[profile][bankid]" id="user-profile-bank1" value="gtb" checked>
                  GUARANTY TRUST BANK
                </label>
                <label class="radio">
                  <input type="radio" name="user[profile][bankid]" id="user-profile-bank2" value="strl">
                  Sterling Bank
                </label>
                <label class="radio">
                  <input type="radio" name="user[profile][bankid]" id="user-profile-bank3" value="acc" checked>
                  ACCESS BANK
                </label>
                <label class="radio">
                  <input type="radio" name="user[profile][bankid]" id="user-profile-bank4" value="eco">
                  ECO BANK
                </label> 
                <div>#submitTag(value="Complete")#</div>
                
            #endFormTag()#
            
        </div>
            
 	</section>
</cfoutput>