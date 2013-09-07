
<%@page import="another.Reward"%>
<%@page import="java.util.ArrayList"%>
<%@page import="another.Project"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% try{ %>
<% Project project = (Project)request.getAttribute("project"); %>
<% ArrayList<Reward> allReward = (ArrayList<Reward>)request.getAttribute("allReward"); %>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%= project.getProjectTitle() %></title>

<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css"/ rel="stylesheet">



<style>
	#headder
		{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
		}
	#titleHead
	{
		text-align: center;
		width = 100%;
		background-color: #f2f2f2;
	}
	#leftContend
	{
		background-color: #f2f2f2;
	}
	#rightContend
	{
		
	}
	#mainContent
	{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
			
	}
	#video
	{
		text-align: center;
		margin-top: 20px;
		margin-bottom: 20px;
	}
	
	#showReward 
	{
		background-color: #f2f2f2;
		margin-bottom: 10px;
	}
	
	#showCurrent
	{
		background-color: #f2f2f2;
		margin-bottom: 10px;
	}
	
}
		
</style>
</head>
<body>
	<jsp:include page="NavBar.jsp"></jsp:include>
	<div>
		<div class="" id="titleHead">
			<h1><%=project.getProjectTitle() %></h1>
			<h2><p> by <%=project.getProfileName() %> </p></h2>
		</div>
		
		<div id="mainContent" class="row-fluid">
			<div id="leftContend" class="span9">
				
				<div id="video">
				<% String urlVideo = project.getUrlVideo().replace("watch?v=","embed/"); %>
					<iframe width="560" height="315" src="<%= urlVideo %>" frameborder="0" allowfullscreen></iframe>
				</div>
				
				<div>
						<%= project.getProjectDescription() %>
				</div>
				
				<div>
					<h2>Risks and challenges</h2>
					<p><%= project.getRisksAndChallenges() %></p>
					
				</div>
				
				<div>
					<h2>FAQ</h2>
					<a href="SentQuestion.jsp?nameProject=<%= project.getProjectTitle()%>" class="btn btn-info">Ask Question</a>
					<a class="btn btn-warning">Report this project</a>					
				</div>
				
			</div>
			
			<div id="rightContend" class="span3">
				
				<div class="thumbnail" id="showCurrent">
					<h3><%= request.getAttribute("count") %></h3> 
					<strong>pleage</strong>
					<h3>$ <%= request.getAttribute("amount") %></h3> 
					<strong>they want $  <%= project.getFundingGold() %></strong>
					<h3>Date <%= project.getFundingDuration() %></h3>
					<strong>End project</strong>
				</div>
				
				
				
				
				<%for(int i=0; i<allReward.size();i++) 
				{%>
				<%Reward temReward = allReward.get(i); %>
				<div class="thumbnail" id="showReward">
					<h4>Pledge <%= temReward.getValueReward() %></h4><br>
					<h4><%= temReward.getRewardTitle() %></h4>
					<p> <%= temReward.getDescription() %> </p>
					<a class="btn btn-success" href="Pleage.jsp?nameProject=<%=temReward.getProjectTitle()%>&nameReward=<%= temReward.getRewardTitle() %>">pleage</a>
				</div>
				<%} %>
				
			
			</div>
		
	</div>
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>

<%} catch(Exception ex){} %>>