<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sent Mail</title>

<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css"/ rel="stylesheet">

<style>

	#headder
		{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
		}


	#sentMail-head
	{
		text-align: center;
	}
	form
	{
		width : 80%;
		margin-left : auto;
		margin-right : auto;
		background-color: #f2f2f2;
			
	}
	textarea
	{
		height: 300px;
		width: 800px;
	}
	
</style>

</head>
	<body>
	<jsp:include page="NavBar.jsp"></jsp:include>
	
	<div id="sentMail-head" class="hero-unit">
		<h2>SentMail</h2>
		
	</div>
	
	<form class="" action="SentMail" method="post">
		<div class="row-fluid">
			<div>
				<div class="span2" id="leftContend">
					<strong>To</strong>
				</div>
					
				<div class="" id="rightContend">
					<input type="text" name="destination" placeholder="Eamil" />
				</div>
			</div>
			
			<div>
			
				<div class="span2" id="leftContend">
					<strong>Title</strong>
				</div>
					
				<div id="rightContend">
					<input type="text" name="title" placeholder="Title" />
				</div>
			</div>
			
			<div>
			
			<div class="span2" id="leftContend">
				<strong>Description</strong>
			</div>
				
			<div id="rightContend">
				<textarea name="description" id="description"></textarea> 
			</div>
			
			</div>
			
			<input type="submit" value="sent"/>
		</div>
	</form>

	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>



</html>