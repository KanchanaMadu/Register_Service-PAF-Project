//**********UserUpdate**********


$(document).ready(
			function() {
				
				const queryString = window.location.search;			
				const urlParams = new URLSearchParams(queryString);			
				const id = urlParams.get('id');	
				
				if(id != null){
					getUser(id);
				}else{
					alert("error in Update");				
					var url = 'http://localhost:8080/Register_Service_Frontend/userTable.jsp';
					window.location = url;
				}
	});
	
	function getUser(id) {
		var userUrl = 'http://localhost:8080/Register_Service/webresources/user_service/'+id;
		
		$.ajax({			
			url : userUrl,
			type : 'GET',
			dataType : 'json', // added data type
			success : function(res) {
							
				var response = res;						
				viewUserToField(response);
			}
		});		
	}
	
	function viewUserToField(response) {
		
		var id = response.id;
	
		document.getElementById("firstName").value = response.firstName;
	
		document.getElementById("lastName").value = response.lastName;

		document.getElementById("email").value = response.email;

		document.getElementById("phone").value = response.phone;

		document.getElementById("address").value = response.address;
	}
	
	$(document).on("click", "#btnSave", function(event) {

		const queryString = window.location.search;			
		const urlParams = new URLSearchParams(queryString);			
		const id = urlParams.get('id');			
		if(id != null){
			updateUser(id,event);
		}else{
			alert('error in Update');				
			var url = 'http://localhost:8080/Register_Service_Frontend/userTable.jsp'
			window.location = url;
		}		
		
	});
	
function updateUser(id,event) {
		
		var formData = $("#formUser").serializeArray();

		function objectifyForm(formArray) {
			//serialize data function
			var returnArray = {};
			for (var i = 0; i < formArray.length; i++) {
				returnArray[formArray[i]['name']] = formArray[i]['value'];
			}
			return returnArray;	
		}

		var formData2 = objectifyForm(formData);

		var formData3 = JSON.stringify(formData2);
		var updateUrl = "http://localhost:8080/Register_Service/webresources/user_service/"+id;
		$.ajax({
			  type: "PUT",
			  url: updateUrl,
			  data: formData3,
			  success: function(res){
				  console.log(res);
				  alert(res);				  
				  var url = 'http://localhost:8080/Register_Service_Frontend/userTable.jsp';
				window.location = url;
			  },
			  dataType: "json",
			  contentType : "application/json"
			});
		
		
	}