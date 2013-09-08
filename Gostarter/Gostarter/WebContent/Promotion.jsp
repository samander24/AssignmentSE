<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Promotion</title>
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css"/ rel="stylesheet">

<style>
#headder
		{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
		}
		#main
		{
			width:80%;
			margin-left: auto;
			margin-right: auto;
			background-color: #f2f2f2;
		}
		#head
		{
			text-align: center;
		}
		
</style>
</head>
<body>
	<jsp:include page="NavBar.jsp"></jsp:include>
	
	<div id="head" class="hero-unit">
		<h2>Promotion</h2>
		<p>Input project title 's project That you want to pick in page home</p>
	</div>
	
		<div id="main" class="row-fluid">
			<form action="Promotion" method="post">
				<div class="span2">
					<strong>Input Project Title</strong>
				</div>
				
				<div class="span10">
					<input type="text" name="nameProject"/>
				</div>
				
				<input class="btn btn-success" type="submit" value="submit" />
			</form>
		</div>
	


	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>