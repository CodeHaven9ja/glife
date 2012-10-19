component
	extends="Model"
	hint="Base Manager model"
{

		/*Init function*/
        
        public void function init(){
        	
            //Associations
            
            belongsTo("user");
            belongsTo("branches");
            
        }

}