<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Start</title>
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css"/ rel="stylesheet">

<style>
	#headder
		{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
		}
	#startContent > div
	{
		margin-top: 5%; 
	}
	
	#startContent > div >a
	{
		float: left;
	}	
	#startContent > div > div
	{
		margin-left: 2%;
		float: left;
	}
	#startContent h1
	{
		
	}
	
	#startContent p
	{
		font-size: 16px;
	}
	
	#message1
	{
		color: #ec645a;
	}
	#message2
	{
		color: #f2a355;
	}
	#message3
	{
		color: #e6cd50;
	}
	#message4
	{
		color: #76cc1e;
	}
	#message5
	{
		color: #0096bb;
	}
	#message6
	{
		color: #6954d1;
	}
	#message7
	{
		color: #c252cc;
	}
	#video p
	{
		text-align: center;
	}
	
	</style>


</head>
<body>
	<jsp:include page="NavBar.jsp"></jsp:include>	
	<div class="row-fluid">
		<div class="offset1 span5" id="startContent">
			<h3>We help people fund creative projects.</h1>
			<p><strong>Kickstarter is the world's largest funding platform for creative projects.</strong> Every week, tens of thousands of amazing people pledge millions of dollars to projects from the worlds of 
				<span  id="message1">music</span>, 
				<span  id="message2">film</span>, 
				<span  id="message3">art</span>, 
				<span  id="message4">technology</span>, 
				<span  id="message5">design</span>, 
				<span  id="message6">food</span>, 
				<span  id="message7">publishing</span> 
				and other creative fields.</p>
			
			<div>
				<a href="StartProject.jsp" class="btn btn-large btn-success">Start your project</a>
				<div>
					<a href="#">Find out how to make an<br/> awesome Kickstarter project</a>
				</div>
			</div>				
		</div>
		
		<div class="span5" id="video">
			<div>
				<iframe width="560" height="315" src="//www.youtube.com/embed/6QGbsNIZ-uo" frameborder="0" allowfullscreen></iframe>					
			</div>
			<p>Each and every Kickstarter project is the independent <br/> creation of someone like you!</p>
		</div>
		
	</div>	
		


	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>