component
	extends="Model"
	hint="Base User model"
{
	/*
	 * @hint Constructor
	 */
	public void function init() {
    	
        //Associations
        
        	hasOne(name="Profile", dependent="delete");
            //People
            hasMany("ceos");
            hasMany("manager");
            hasMany("representatives");
            //Entities
            hasMany("business");
            hasMany("communities");
            
            nestedProperties(association="profile");
        
        //Validations
        
		beforeCreate("setEmailConfirmationToken");
		beforeSave("sanitize,securePassword");

		validatesConfirmationOf("email,password");
		validatesFormatOf(property="email", type="email");
		validatesFormatOf(property="password", regEx="^.*(?=.{8,})(?=.*\d)(?=.*[a-z]).*$", message="Your password must be at least 8 characters long and contain a mixture of numbers and letters.");
		validatesPresenceOf("firstname,lastname,email,password,sex");
		validatesUniquenessOf("email");

		/* We need to stop automatic validation from firing on the salt column.
		 * The salt col is 'not null' in the db, and it's only set after the model
		 * has been validated (beforeSave), thus the automatic validation will
		 * always trigger without this line, preventing the user from being saved.
		 * If someone has a better work around, please share.
		 */
		automaticValidations(false);
	}

	// --------------------------------------------------
	// Callbacks

	/*
	 * @hint Sanitizes the user object.
	 */
	private void function sanitize() {
		this.firstname = HtmlEditFormat(this.firstname);
        this.lastname = HtmlEditFormat(this.lastname);
	}

	/*
	 * @hint Secures the password property before saving it.
	 */
	private void function securePassword() {
		if ( StructKeyExists(this, "passwordConfirmation") ) {
			/*Commented out for dev*/
            //var bCrypt = CreateObject("java", "BCrypt");
			//this.salt = bCrypt.genSalt();
            this.salt = hash(generateToken(), "SHA-512");
			//this.password = bCrypt.hashpw(this.password, this.salt);	
            this.password = hash(this.password & this.salt, "SHA-512");
		}
	}

	/**
	 * @hint Sets the emailConfirmationToken for the user.
	 */
	private void function setEmailConfirmationToken() {
		this.emailConfirmationToken = generateToken();	
	}

	// --------------------------------------------------
	// Public

	/**
	 * @hint Authenticates a user object.
	 */
	public boolean function authenticate(required string password) {
		//var bCrypt = CreateObject("java", "BCrypt");
		//return ! Compare(this.password, bCrypt.hashpw(arguments.password, this.salt));
        return ! Compare(this.password, hash(arguments.password & this.salt, "SHA-512"));
	}

	/**
	 * @hint Creates a password reset token
	 */
	public void function createPasswordResetToken() {
		this.passwordResetToken = generateToken();
		this.passwordResetAt = Now();
		this.save();
	}

	/*
	 * @hint Convenience method to blank user password.
	 */
	public void function passwordToBlank() {
		if ( StructKeyExists(this, "password") ) this.password = "";
		if ( StructKeyExists(this, "passwordConfirmation") ) this.passwordConfirmation = "";
	}

	/**
	 * @hint Generates a random token.
	 */
	public string function generateToken() {
		return Replace(LCase(CreateUUID()), "-", "", "all");
	}
}