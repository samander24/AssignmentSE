<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css"/ rel="stylesheet">

<style>
	#headder
		{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
		}
	#login
	{
		
		width: 80%; 
		margin-left: auto; 
		margin-right: auto; 
		
		padding-left: 30%;
	}
	
	#login  *
	{
		margin-bottom: 3%; 
	}
	body > div > div > div
	{
		width: 80%; 
		margin-left: auto; 
		margin-right: auto; 
		
		padding-left: 30%;
	}
		
	
</style>


</head>
<body>
	<jsp:include page="NavBar.jsp"></jsp:include>
	<div class="row-fluid">
		<!-- Login -->
		<div class="span4">
			<div id="login">
				<strong>Log in</strong>
				<p>Plese log in to continue</p>
				
				<form action="login" method="post">
					<label>Email</label>
					<input name="email" type="text" placeholder="Email" />
					<div style="display: block" >
						<label style="display: inline">Password</label>
						<a href="#" style="display:inline;margin-left: 10%">forget password</a>
					</div>
					<input name="password" type="password" placeholder="password" />
					<label>
						<input type="checkbox" ></input> Remember me
					</label>
					<button type="submit" class="btn btn-large btn-success">Log me in!</button>
				</form>
			</div>
		</div>	
		
		
		<div class="span4">
			<div>
				<strong>New to kickstarter?</strong>
				<p>A Kickstarter account is required to continue</p>
				<form action="register" method="post">
					<label>Full name</label>
					<input name="name" type="text" placeholder="Full name" />
					<label>Email</label>
					<input name="email" type="text" placeholder="Email" />
					<label>RE-ENTER EMAIL</label>
					<input name="reEmail" type="text" placeholder="Re-enter email" />
					<label>PASSWORD</label>
					<input name="password" type="password" placeholder="Pass word" />
					<label>RE-ENTER PASSWORD</label>
					<input name="rePassword" type="password" placeholder="Re-enter password" />
					<label></label>
					<input type="checkbox" style="float:left" /> 
					<div style="float: left;"  >
						Discover new projects <br/>
						with our weekly newsletter
					</div>
					<br/>
					<br/>
						<button type="submit" class="btn btn-success btn-large">Register</button>				
				</form>
			</div>
		
				
			
		</div>
		
		<div class="span4">
			
		</div>
		
		
	</div>
	
	
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>