<%@page import="beans.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css"/ rel="stylesheet">



<style>
	#headder
		{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
		}
	#avartar
	{
		width: 160px;
		height: 160px;
	}
	#mainProfile > div > div
	{
		float: left;
		display: inline;
		margin-right: 3%;
	}
	#mainProfile > div > div > a
	{
		float: right;
	}
	
	#buttonDiv
	{

		margin-left: 10%;
		margin-bottom: 5%;
		
	}
	
	#footlink > h3
	{
		text-align: center;
	}
	#linkDiscover
	{
		text-align: center;
		font-size: 30px;
		
	}
	#link
	{
		text-align: center;
	}
</style>


</head>
<body>
	<div class="container-fluid" >
		
		<jsp:include page="NavBar.jsp"></jsp:include>
		
		<div class="hero-unit" id="mainProfile">
		
			<div class="row-fluid">	
				<div class="offset2" >
					<img id="avartar" src="pic/Doctor-Who.jpg" />
				</div>
				
				<div class="">
					<h1><%User loginUser = (User)session.getAttribute("loginUser"); %><%= loginUser.getName() %></h1>
					<p><span>Backed  projects </span> <span>เธขเธ— Joined August 2013</span> </p>
				</div>
				
				<div class="" >
					<a href="#" class="btn btn-success">Edit profile</a>
				</div>
				
			</div>
			
			
			
				
		</div>
		<div class="" id="footlink">
			<div id="buttonDiv">
				<a class="btn btn-inverse btn-large" href="#">Backed</a>
				<a class="btn btn-inverse btn-large" href="#">Comment</a>
			</div>
			
			<div id="link">	
				<h3>You haven't backed any projects. Let's change that! </h3>
				<a href="#" id="linkDiscover">Discover projects</a>
			</div>	
		</div>
		
	</div>
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>


</body>
</html>