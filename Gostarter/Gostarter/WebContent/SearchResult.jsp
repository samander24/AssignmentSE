<%@page import="another.Project"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
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
			width : 80%;
			margin-left : auto;
			margin-right : auto;	
	}	
	img
	{
		width : 300px;
		height: 300px;
	}	
	#upper
	{
		
	}
		
</style>

</head>
<body>

<body>
	<jsp:include page="NavBar.jsp"></jsp:include>
	<%ArrayList<Project> userProject =(ArrayList<Project>) request.getAttribute("discoverProject"); %>
	<%int numberDiv = (Integer)request.getAttribute("numberDiv"); %>
	<%int max = userProject.size(); %>
	<%int count = 0; %>
	<%int[] percent = (int[])request.getAttribute("percent"); %>
	
	<div class="hero-unit">
		<h2>Search<h2>
		
	</div>
	
	<%for(int i=0;i<numberDiv;i++)
	{%>	
		<div id="mainContent" class="row-fluid">
			
			<%for(int j=0;j<3&&count<max;j++,count++)
			{ %>
			<%Project temProject = userProject.get(count); %>
			
			<div class="thumbnail span4">
					
					<a href="ShowProject.jsp?nameProject=<%=temProject.getProjectTitle() %>"><img src=" <%= temProject.getUrlProjectPicture() %>"></a>
					<h5><%=temProject.getProjectTitle()%></h5>
					<p>by <%= temProject.getProfileName() %> <br /><%= temProject.getShortBlurp() %></p>
				
					<div class="progress progress-striped active">
						 <div class="bar" style="width: <%= percent[count]%>%; height=50%;"></div><br />
					</div>			
					<div class="row-fluid">
						<div class="span4">
						<strong><%= percent[count]%>%</strong><br />funded
						</div>
						<div class="span4">
						<strong>$<%=temProject.getFundingGold() %></strong><br />pledged
						</div>
						<div class="span4">
						<strong><%=temProject.getFundingDuration() %></strong><br />End project
						</div>	
					</div>
					
					<div>		
						<a class="btn btn-success" href="AddReward.jsp?nameProject=<%=temProject.getProjectTitle()%>">Add reward</a>
					</div>
			</div>
		
			<% }%>
		
		
		
		</div>
		
	<%} %>	
		
		
		<script src="http://code.jquery.com/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>				
</body>
</html>