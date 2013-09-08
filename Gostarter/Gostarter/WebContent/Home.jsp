<%@page import="java.util.ArrayList"%>
<%@page import="another.Project"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<% ArrayList<Project> pageOne = (ArrayList<Project>)session.getAttribute("projectForPage1"); %>
	<% ArrayList<Project> pageTwo = (ArrayList<Project>)session.getAttribute("projectForPage2"); %>
	<% int[] perPageOne = (int[])session.getAttribute("percentForPage1"); %>
	<% int[] perPageTwo = (int[])session.getAttribute("percentForPage2"); %>
	
	

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Go starter</title>
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
	   	
	   	#picProject
	   	{
	   		width: 300px;
	   		height: 300px;
	   	}
	</style>
	
	<link href="css/bootstrap.css" rel="stylesheet" media="screen">
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
</head>

<body>

	<jsp:include page="NavBar.jsp"></jsp:include>	
	
	
	
	<% Project firstProject =(Project)request.getServletContext().getAttribute("firstProject"); %>
	<% int percentFirst =(Integer)request.getServletContext().getAttribute("percentFirst"); %>	
	<% int pleageFirst = (Integer)request.getServletContext().getAttribute("pleageFirst") ;%>
	
	
	<!--------Picture main------>
		<div class="header">
			<div class="row-fluid" id="mainContent" >	
				<img src="pic/nature.jpg">
				<div><font color="white">
					<h2>Bring creativity to life <br/></h2>
					<p>Curious how Kickstarter works?<p><br />
					<a href="#"class="btn btn-large btn-info">Click</a>
					</font>
				</div>	
			</div>
		
		<!--------Staff Pick------>
		<div class="container" style="background-color:#F0F1F2">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span1">
					</div>
					<div class="span8" >
						<h2>Staff Pick :</h2>
						<div class="row-fluid">
							<div class="tab-content">
								<div class="tab-pane active" id="tab1">  <!--------tab 1------>
									<div class="span6">
										<% String urlVideo = firstProject.getUrlVideo().replace("watch?v=","embed/"); %>
										<iframe width="100%" height="320" src="<%=urlVideo %>" frameborder="0" allowfullscreen></iframe>		
									</div>
									<div class="span6">
										<p> 
										<h4><a href="ShowProject.jsp?nameProject=<%=firstProject.getProjectTitle() %>"><%=firstProject.getProjectTitle() %></a></h4>
											
											 <br /><br />				
											<%=firstProject.getShortBlurp() %>	<br />
										
												<div class="progress progress-striped active">
													 <div class="bar" style="width: <%=percentFirst %>%;"></div>
												</div>
												<div class="span3">
												<strong><%= percentFirst %>%</strong><br />funded
												</div>
												<div class="span3">
												<strong>$<%= firstProject.getFundingGold() %></strong><br />pledged
												</div>
												<div class="span3">
												<strong><%= firstProject.getFundingDuration() %></strong><br />End project
												</div>													
										</p>
									
									</div>
								</div>
								<div class="tab-pane" id="tab2">  <!--------tab 2------>
									<div class="span6">
										<iframe width="100%" height="320" src="http://www.youtube.com/embed/tEnsqpThaFg?autoplay=0;" frameborder="0" allowfullscreen></iframe>		
									</div>
									<div class="span6">
										<p> 
										<h4><a href=#>League of Legend</a></h4>
											League of Legend 
											 <br /><br />				
											eague of Legends is a fast-paced, competitive online game that blends the speed and intensity of an RTS with RPG elements.
											Two teams of powerful champions, each with a unique design and playstyle, battle head-to-head across multiple battlefields and game modes.
											With an ever-expanding roster of champions, frequent updates and a thriving tournament scene, League of Legends offers endless
											replayability for players of every skill level.		
											<div align=justify>
												<div class="progress progress-striped active">
													 <div class="bar" style="width: 50%;"></div>
												</div>
												<div class="span3">
												<strong>50%</strong><br />funded
												</div>
												<div class="span3">
												<strong>$100</strong><br />pledged
												</div>
												<div class="span3">
												<strong>100</strong><br />day to go
												</div>													
											</div>											
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>	
				
					<div class="span2" >
						<h3>Categorie</h3>
							<div class="tabbable tabs-left" >
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tab1" data-toggle="tab">Music</a></li>
									<li><a href="#tab2" data-toggle="tab">Games</a></li>
								</ul>
							</div>
					</div>
					<div class="span1">
					</div>
				</div>
			</div>		<br />
		</div>
		
		<!-----Popular ------ [slider] --------->
		<div class="container" >
				<h2>			
				<div class="row-fluid">
					<div class="span1">
					</div>
					<div class="span10">
						Popular
					</div>
					<div class="span1">
					</div>
				</div>	
				</h2>	
		</div>

			<div class="row-fluid">
				<div class="span12">
					<div id="myCarousel" class="carousel slide">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>  
						  <!-- Carousel items -->
						<div class="carousel-inner">
							<div class="active item">     <!-- page 1 -->
								<div class="row-fluid">
									<div class="span1">
									</div>
									<div class="span10">
										<div class="row-fluid">
										<ul class="thumbnails">
											
											<% for (int i=0;i<pageOne.size();i++) 
											{ %>
											<% Project tem = pageOne.get(i); %> 
											<li class="span3">
												<div class="thumbnail">  <!-- item 1 -->
													<a href="ShowProject.jsp?nameProject=<%=tem.getProjectTitle() %>"><img id="picProject" src="<%= tem.getUrlProjectPicture() %>" alt="" align="middle"></a>
													<h5><%= tem.getProjectTitle() %></h5>
													<p><%= tem.getProfileName() %> <br /><%= tem.getShortBlurp() %></p>
												
													<div class="progress progress-striped active">
														 <div class="bar" style="width: <%= perPageOne[i]%>%; height=50%;"></div><br />
													</div>			
													<div class="row-fluid">
														<div class="span4">
														<strong><%= perPageOne[i]%>%</strong><br />funded
														</div>
														<div class="span4">
														<strong>$<%=tem.getFundingGold() %></strong><br />pledged
														</div>
														<div class="span4">
														<strong><%= tem.getFundingDuration() %></strong><br />End project
														</div>	
													</div>		
												</div>
											</li>
											<%} %>										
										</ul>
										</div>
									</div>
									<div class="span1">
									</div>
								</div>
							</div>
							
							<div class="item">     <!-- page 2 -->
								<div class="row-fluid">
									<div class="span1">
									</div>
									<div class="span10">
										<div class="row-fluid">
										<ul class="thumbnails">
											
											<%for(int i=0;i<pageTwo.size();i++) {%>
											<% Project theTem = pageTwo.get(i); %>
											<li class="span3">
												<div class="thumbnail">    <!-- items  1  -->
													<a href="ShowProject.jsp?nameProject=<%=theTem.getProjectTitle() %>"><img src="<%=theTem.getUrlProjectPicture() %>" alt="" href="#"></a>
													<h5><%=theTem.getProjectTitle() %></h5>
													<p><%= theTem.getProfileName() %><br/><%= theTem.getShortBlurp() %> </p>
											
													<div class="progress progress-striped active">
														 <div class="bar" style="width: <%=perPageTwo[i]%>%; height=50%;"></div><br />
													</div>			
													<div class="row-fluid">
														<div class="span4">
														<strong><%=perPageTwo[i] %></strong><br />funded
														</div>
														<div class="span4">
														<strong>$<%= theTem.getFundingGold() %></strong><br />pledged
														</div>
														<div class="span4">
														<strong><%= theTem.getFundingDuration() %></strong><br />End project
														</div>	
													</div>		
	
												</div>
											</li>
												<%} %>																			<li class="span3">
											</ul>
										</div>
									</div>
									<div class="span1">
									</div>
								</div>
							</div>
						

					
						</div>
								  <!-- Carousel nav -->
						<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
						<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
						  	
							
						
					</div>
				</div>
			</div>
	
	
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>	
</body>
</html>