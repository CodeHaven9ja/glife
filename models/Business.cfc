component
	extends="Model"
	hint="Base Business model"
{

		/*Init function*/
        
        public void function init(){
        	
            //Associations
            
            belongsTo("user");
            belongsTo("ceo");
            belongsTo("category");
            hasMany("branches");
            
        }

}