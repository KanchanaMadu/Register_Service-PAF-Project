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
   <script  src="component/UserInsert.js"></script> 
</head>
<body>

<div class="container pt-3">
<h1 class="text-center" style="color: #4835d4;">Add New User</h1>
	<form class = "card p-3 bg-light" id="formUser" name="formUser" method="post" action="http://localhost:8080/testSevlet/userTable.jsp">
		<div class="form-group">
			<label for="firstName">First Name</label> <input type="text"
				class="form-control" id="firstName" name="firstName"
				aria-describedby="emailHelp" placeholder="First Name">
		</div>
		<div class="form-group">
			<label for="lastname">Last Name</label> <input type="text"
				class="form-control" id="lastName" name="lastName"
				placeholder="Last Name">
		</div>
		<div class="form-group">
			<label for="Email1">Email</label> <input type="email"
				class="form-control" id="email" name="email"
				aria-describedby="emailHelp" placeholder="Email">
		</div>
		<div class="form-group">
			<label for="address">Address</label> <input type="text"
				class="form-control" id="address" name="address"
				placeholder="Address">
		</div>
		<div class="form-group">
			<label for="phone">Phone</label> <input type="text"
				class="form-control" id="phone" name="phone" placeholder="Phone">
		</div>
		<button type="submit" id="btnSave" class="btn btn-primary">Submit</button>
	</form>
</div>

	<script>
	/* $(document).on("click", "#btnSave", function(event) {

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
	}); */
	</script>
	
</body>
</html>