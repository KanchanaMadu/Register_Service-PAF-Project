//*****UserTable Java Script********

$(document).ready(
		function() {
			
			$.ajax({
				url : "http://localhost:8080/Register_Service/webresources/user_service/get_all_users",
				type : 'GET',
				dataType : 'json', // added data type
				success : function(res) {
					var response = res.user;						
					DataForTable(response);
				}
			});
			
			
			//Delet button click
			$(document).on("click", ".delete", function() {
				
				if (confirm("Confirm Delete User") == true) {
					deletUser($(this).parents("tr").data('id'));
					$(this).parents("tr").remove();
				} else {					
				}
			});
			
			$(document).on("click",".edit",	function() {
				var url = 'http://localhost:8080/testSevlet/userUpdate.jsp?id='+ $(this).parents("tr").data('id');
				window.location = url;
						
			});
});


function DataForTable(response) {
	var col = [];
	for (var i = 0; i < 1; i++) {
		for ( var key in response[i]) {

			col.push(key);
		}
	}

	for (var i = 0; i < response.length; i++) {

		var id;
		var firstName;
		var lastName;
		var email;
		var phone;
		var address;
		for (var j = 0; j < col.length; j++) {

			if (col[j] == "id") {
				id = response[i][col[j]];
			}
			if (col[j] == "firstName") {
				firstName = response[i][col[j]];
			}
			if (col[j] == "lastName") {
				lastName = response[i][col[j]];
			}
			if (col[j] == "email") {
				email = response[i][col[j]];
			}
			if (col[j] == "phone") {
				phone = response[i][col[j]];
			}
			if (col[j] == "address") {
				address = response[i][col[j]];
			}
		}

		var row = '<tr data-id=' + id + '>'
				+ '<td>' + firstName + '</td>'
				+ '<td>' + lastName + '</td>'
				+ '<td>' + email + '</td>'
				+ '<td>' + address + '</td>'
				+ '<td>' + phone + '</td>'
				+ '<td>'
				
				+ '<a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>'
				+ '<a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>'
				+ '</td>' + '</tr>';
		$("table").append(row);
	}
}


function deletUser(id) {
	
	var deletUrl = 'http://localhost:8080/Register_Service/webresources/user_service/'+id
	
	$.ajax({
	    url: deletUrl,
	    type: 'DELETE',
	    complete : function(response, status) 
	    { 
	    onItemDeleteComplete(response.responseText, status); 
	    } 
	});
	
	function onItemDeleteComplete(response, status) 
	{ 
	if (status == "success") 
	 { 
	 var resultSet = JSON.parse(response); 
	 if (resultSet.status.trim() == "success") 
	 { 
	 $("#alertSuccess").text("Successfully deleted."); 
	 $("#alertSuccess").show(); 
	 $("#divItemsGrid").html(resultSet.data); 
	 } else if (resultSet.status.trim() == "error") 
	 { 
	 $("#alertError").text(resultSet.data); 
	 $("#alertError").show(); 
	 } 
	 } else if (status == "error") 
	 { 
	 $("#alertError").text("Error while deleting."); 
	 $("#alertError").show(); 
	 } else
	 { 
	 $("#alertError").text("Unknown error while deleting.."); 
	 $("#alertError").show(); 
	 } 
	}
}