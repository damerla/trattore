<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="trattore">
<head>
<meta http-equiv="Content-Type" content="text/css; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script type="text/javascript" src="resource/common.js"></script>
<script type="text/javascript" src="resource/angular_controler.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body >
	<div class="container" ng-controller="registor">
		<div class="row">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form role="form">

					<h2>
						Please Sign Up <small>It's free and always will be.</small>
					</h2>
					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input ng-model="customer.fName" type="text" name="first_name"
									id="first_name" class="form-control input-lg"
									placeholder="First Name" tabindex="1">
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input ng-model="customer.sName" type=" text" name="last_name"
									id="last_name" class="form-control input-lg"
									placeholder="Last Name" tabindex="2">
							</div>
						</div>
					</div>
					<div class="form-group">
						<input ng-model="customer.displayName" type="text" name="display_name" id="display_name"
							class="form-control input-lg" placeholder="Display Name"
							tabindex="3">
					</div>
					<div class="form-group">
						<input ng-model="customer.email"  type=" email" name="email"
							id="email" class="form-control input-lg"
							placeholder="Email Address" tabindex="4">
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input ng-model="customer.password" type=" password" name="password"
									id="password" class="form-control input-lg"
									placeholder="Password" tabindex="5">
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="password" name="password_confirmation"
									id="password_confirmation" class="form-control input-lg"
									placeholder="Confirm Password" tabindex="6">
							</div>
						</div>
					</div>


					<hr class="colorgraph">
					<div class="row">
						<div ng-click="addCustomer(customer)" class="col-xs-12 col-md-6">
							<input type="button" value="Register"
								class="btn btn-primary btn-block btn-lg" tabindex="7">
						</div>
						<div class="col-xs-12 col-md-6">
							<a href="#" class="btn btn-success btn-block btn-lg">Sign In</a>
						</div>
					</div>
				</form>
			</div>
		</div>
		<pre>{{customer}}</pre>
	</div>
</body>
</html>