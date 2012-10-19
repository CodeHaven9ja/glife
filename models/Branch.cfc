component
	extends="Model"
	hint="Base Branch model"
{

		/*Init function*/
        
        public void function init(){
        	
            //Associations
            
            belongsTo("business");
            hasOne("manager");
            hasMany("representatives");
            
        }

}