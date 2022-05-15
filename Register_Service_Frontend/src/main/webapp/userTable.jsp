<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Register</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script  src="component/User.js"></script>
</head>
<script>
/* $(document).ready(
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
} */
	
</script>
<body>
	<div class="container pt-3">
		<h1 class="text-center" style="color: #4835d4;">All Users</h1>

		<div class="row">
			<div class="col-md-3">
				<div class="container pb-1" style="font-size: 30px;">
					<a href="userInsert.jsp" class="btn btn-info">Add New User</a>
				</div>
			</div>
		</div>
	</div>

	<div class="container shadow" style="border-radius: 10px;">
		<div class="shadow-sm p-3 mb-5 bg-body rounded">
			<table class="table table-hover ">
				<thead>
					<tr>

						<th scope="col">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">Email</th>
						<th scope="col">Address</th>
						<th scope="col">Phone No</th>
						<th scope="col">Actions</th>
					</tr>
				</thead>

				<tbody>
					
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>