$(document).on("click", "#btnSave", function(event) {

		var $formUser = $('#formUser');
		if ($formUser[0].checkValidity()) {
		
			function objectifyForm(formArray) {
				//serialize data function
				var returnArray = {};
				for (var i = 0; i < formArray.length; i++) {
					returnArray[formArray[i]['name']] = formArray[i]['value'];
				}
				return returnArray;	
			}
			
			var formData = $("#formUser").serializeArray();
	
			var formData2 = objectifyForm(formData)
	
			var formData3 = JSON.stringify(formData2);
			
			$.ajax({
				  type: "POST",
				  url: "http://localhost:8080/Register_Service/webresources/user_service/add_user",
				  data: formData3,
				  success: function(result){ alert(result);},
				  dataType: "json",
				  contentType : "application/json"
				});	
					
			
		}else{
			 $formUser.find('input[type=image]').click()
		}	



	});