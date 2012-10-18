component
	extends="Model"
	hint="Base Profile model"
{

		/*Init function*/
        
        public void function init(){
        	
            //Associations
            
            belongsTo("user");
            
        }

}