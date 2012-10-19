component
	extends="Model"
	hint="Base CEO model"
{

		/*Init function*/
        
        public void function init(){
        	
            //Associations
            
            belongsTo("user");
            hasMany("businesses");
            
        }

}