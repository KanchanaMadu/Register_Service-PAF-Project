 //

function validating(){

		// first name
		if ($("#firstName").val().trim() == "") 
		 { 
		 return "Insert First Name."; 
		 } 
		// last name
		if ($("#lastName").val().trim() == "") 
		 { 
		 return "Insert Last Name."; 
		 } 
		//email
		if ($("#email").val().trim() == "") 
		 { 
		 return "Insert  Email"; 
		 }
	
		let pattern = /@/; 
		if ( pattern.test($("#email").val().trim()) == false) 
		 { 
		 return "Insert valid  Email"; 
		 } 
		// address
		if ($("#address").val().trim() == "") 
		 { 
		 return "Insert  Adress."; 
		 } 
	   //phone
		if ($("#phone").val().trim() == "") 
		 { 
		 return "Insert  Phone NUmaber."; 
		 } 
	
			
		if (isNaN($("#phone").val()) == true) 
		 { 
		 	return "Insert Digits only for number"; 
		 }
		
		if ($("#phone").val().trim().length != 10) 
		 { 
		 return "Insert  10 digit for number."; 
		 } 
	 
	
		return true; 
	
}