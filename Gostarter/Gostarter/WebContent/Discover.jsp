<%@page import="another.Project"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Discover</title>
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css"/ rel="stylesheet">
<style>
	#headder
		{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
		}
	   	#mainContent img
	   	{
	   		width: 100%;
	   		height: 360px;
	   		z-index: -5;
	   	}
	   	#mainContent > div
	   	{
	   		position: absolute;
	   		width: 50%;
	   		top: 100px;
	   		left: 50%;
	   	}
	   	#pic
	   	{
	   		width : 300px;
	   		height : 200px;
	   	}
	   	
</style>
</head>
<body>

	<jsp:include page="NavBar.jsp"></jsp:include>
	
	<%ArrayList<Project> allProject = (ArrayList<Project>)request.getAttribute("allProject"); %>
	<% int[] perCentProject = (int[])request.getAttribute("perCentProject");  %>
	<% int numDiv = (Integer)request.getAttribute("numDiv"); %>
	<% int count = 0; %>
		
		<div class="container" >	  	
			<div class="container-fluid">
			  <div class="row-fluid">
				<div class="span1">   <!--blank-->
				</div>
				<div class="span8"> <!--Body content-->
					<h2>Discover Project</h2><p><h4>Passion, ideas, and ambition abound. Start exploring! <br/><br/></h4></p>
					<h3>Staff Pick</h3>  <!-- staff pick --> 
									<div class="row-fluid"> 
									
									
									<%for(int i=0;i<numDiv;i++) {%>
										<ul class="thumbnails">
											<%for (int j=0;j<3&& count<allProject.size();j++,count++) {%>
											<%Project tem = allProject.get(count); %>
											<li class="span4">
												<div class="thumbnail">    <!-- items  1  -->
													<a href="ShowProject.jsp?nameProject=<%= tem.getProjectTitle() %>"><img id="pic" src="<%= tem.getUrlProjectPicture() %>" alt="" href="#"></a>
													<h5><%= tem.getProjectTitle() %></h5>
													<p><%= tem.getProfileName() %> <br /> <%=tem.getShortBlurp() %></p>
											
													<div class="progress progress-striped active">
														 <div class="bar" style="width: <%= perCentProject[count] %>%; height=50%;"></div><br />
													</div>			
													<div class="row-fluid">
														<div class="span4">
														<strong><%= perCentProject[count]%>%</strong><br />funded
														</div>
														<div class="span4">
														<strong>$<%= tem.getFundingGold() %></strong><br />pledged
														</div>
														<div class="span4">
														<strong><%= tem.getFundingDuration() %></strong><br />End project
														</div>	
													</div>		
	
												</div>
											</li>
											<% } %>
										</ul>
									<%} %>
									</div>







					
					
				</div>
				
				<div class="span3">   <!--Sidebar content-->
					
					<div class="container-fluid">
						 <div class="well sidebar-nav">
							<ul class="nav nav-list">
							  <li class="nav-header"><h4>Featured</h4></li>
							  <li class="active"><a href="Discover/staffpick.html">Staff Pick</a></li>
							  <li><a href="#">Popular</a></li>
							  <li><a href="#">Recently Launched</a></li>
							  <li><a href="#">Ending Soon</a></li>
							  <li class="nav-header">Categories</li>
							  <li><a href="Discover/Games.html">Games</a></li>
							  <li><a href="#">Link</a></li>
							  <li><a href="#">Link</a></li>

							</ul>
					  </div><!--/.well -->
					</div><!--/span-->
				</div>		
				</div>
		
			  </div>
			</div>
		</div>	

	
	
	
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>