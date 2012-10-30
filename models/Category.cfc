component
	extends="Model"
	hint="Base Category model"
{

		/*Init function*/
        
        public void function init(){
        	
            //Associations
            
            belongsTo("entity");
            hasMany("products");
            hasMany("businesses");
            
        }

}