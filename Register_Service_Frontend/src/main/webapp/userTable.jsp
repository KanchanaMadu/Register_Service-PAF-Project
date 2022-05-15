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