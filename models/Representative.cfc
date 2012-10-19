component
	extends="Model"
	hint="Base Representative model"
{

		/*Init function*/
        
        public void function init(){
        	
            //Associations
            
            belongsTo("user");
            belongsTo("branches");
            
        }

}