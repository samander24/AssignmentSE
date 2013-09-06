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
	
		#mainContent
	{
		width: 80%;
		margin-left: auto;
		margin-right: auto;
		background-color: #F2F2F2;
		margin-bottom: 100px;	
	}
	
	#inputDescription
	{
		width: 60%;
		height: 200px;
	}
	#Rewards-Head
	{
		text-align: center;
	}


</style>


</head>
<body>
	
	<jsp:include page="NavBar.jsp"></jsp:include>

	
		<div id="Rewards-Head" class="hero-unit">
		<h2>Add Reward</h2>
		<p>Add Reward for you Project. </p>
		
	</div>
	
	
	<div id="mainContent" class="row-fluid">
		<form action="AddReward" method="post">
			<div id="rewardsTitle" class="">
				
				<div id="leftContend" class="offset1 span3">
					<strong>Rewards Title</strong>	
				</div>
				
				<div id="rightContend" class="span8">
					<input type="text" name="rewardTitle" placeholder="Input Name" />
					
				</div>
				
			</div>
			
			<div id="valueReward" class="">
				
				<div id="leftContend" class="offset1 span3">
					<strong>Pledge amount</strong>	
				</div>
				
				<div id="rightContend" class="span8">
					<input type="text" name="valueReward" placeholder="How many you want" />
					
				</div>
				
			</div>
			
			<div id="description" class="">
				
				<div id="leftContend" class="offset1 span3">
					<strong>Description</strong>
				</div>
				
				<div id="rightContend" class="span8">
					<textarea id="inputDescription" name="description"></textarea>
				</div>
				
			</div>
			
			<div id="estimatedDelivery" class="">
				<div id="leftContend" class=" offset1 span3">
					<strong>Estimated delivery</strong>
				</div>
				
				<div id="rightContend" class="span8">
					<select name="month" >
						
						<option value="1">January</option>
						<option value="2">February</option>
						<option value="3">March</option>
						<option value="4">April</option>
						<option value="5">May</option>
						<option value="6">June</option>
						<option value="7">July</option>
						<option value="8">August</option>
						<option value="9">September</option>
						<option value="10">October</option>
						<option value="11">November</option>
						<option value="12">December</option>
						</select>
						
					<select name="year">
						
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
					</select>
					
					
				</div>
			</div>
			
			<div>
			<input type="submit" class=" offset1 btn btn-success btn-large" value="Add"  />
			</div>
		</form>
		
		
	</div>

	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>	
</body>
</html>