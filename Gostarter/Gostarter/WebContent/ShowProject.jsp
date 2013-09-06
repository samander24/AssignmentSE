
<%@page import="another.Project"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% try{ %>
<% Project project = (Project)request.getAttribute("project"); %>

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
	}
	#leftContend
	{
		
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
					<a class="btn btn-info">Ask Quation</a>
					<a class="btn btn-warning">Report this project</a>					
				</div>
				
			</div>
			<div id="rightContend" class="span3">
				
				
			
			</div>
		</div>
		
	</div>
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>

<%} catch(Exception ex){} %>>