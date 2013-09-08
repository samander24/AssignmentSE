<%@page import="another.Reward"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pleage</title>
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css"/ rel="stylesheet">

<style>
#headder
	{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
	}
	
		#mainContent
	{
		width: 80%;
		margin-left: auto;
		margin-right: auto;
		background-color: #F2F2F2;
		margin-bottom: 100px;	
	}
	#pleage-Head
	{
		text-align: center;
	}
	#pleage-Head strong
	{
		color:#3399FF;
	}


</style>


</head>
<body>
	<jsp:include page="NavBar.jsp"></jsp:include>
	<% Reward reward =(Reward)request.getAttribute("reward"); %>
		
	
	<div id="pleage-Head" class="hero-unit">
		<h2>Pleage</h2>
		<p>Plese input for pleage</p>
		<p>You want to Pleage <strong> <%= reward.getProjectTitle() %></strong> project and want reward<strong> <%= reward.getRewardTitle() %></strong> pay<strong> <%= reward.getValueReward() %><strong><p>
		<p>If you don't<p>
		<p> <a class="btn btn-warning" href="Home.jsp">Back</a><p>
	</div>
	
	
	<div id="mainContent" class="row-fluid">
		<form action="doP" method="post">
			
			
			<div id="pleageValue" class="">
				
				<div id="leftContend" class="offset1 span3">
					<strong>Pleage</strong>	
				</div>
				
				<div id="rightContend" class="span8">
					<input type="text" name="pleageValue" placeholder="How many" />
					
				</div>
				
			</div>
			
			<div id="amazonPayment" class="">
				
				<div id="leftContend" class="offset1 span3">
					<strong>amazonPayment</strong>	
				</div>
				
				<div id="rightContend" class="span8">
					<input type="text" name="amazonPayment" placeholder="amazonpayment" />
					
				</div>
				
			</div>
			
			<div id="Identity" class="">
				
				<div id="leftContend" class="offset1 span3">
					<strong>Identity verification</strong>
				</div>
				
				<div id="rightContend" class="span8">
					<input type="text" name="identityName" placeholder="Name" />
					
				</div>
				
			</div>
			
			<div id="Identity" class="">
				
				<div id="leftContend" class="offset1 span3">
					
				</div>
				
				<div id="rightContend" class="span8">
					<input type="text" name="identityLastName" placeholder="LastName" />
					
				</div>
				
			</div>
			
			
			
			<div>
				<input type="submit" class=" offset1 btn btn-success btn-large" value="Submit"  />
			</div>
		</form>
	



	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>	
</body>
</html>