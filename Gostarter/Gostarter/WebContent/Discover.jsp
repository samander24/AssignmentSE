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
</style>
</head>
<body>

	<jsp:include page="NavBar.jsp"></jsp:include>
	
		
		<div class="container" >	  	
			<div class="container-fluid">
			  <div class="row-fluid">
				<div class="span1">   <!--blank-->
				</div>
				<div class="span8"> <!--Body content-->
					<h2>Discover Project</h2><p><h4>Passion, ideas, and ambition abound. Start exploring! <br/><br/></h4></p>
					<h3>Staff Pick</h3>  <!-- staff pick --> 
									<div class="row-fluid"> 
										<ul class="thumbnails">
											<li class="span4">
												<div class="thumbnail">    <!-- items  1  -->
													<a href="ShowProject.jsp?nameProject=The Phantom Tollbooth"><img src="pic/P3/T1.jpg" alt="" href="#"></a>
													<h5>Mother of Myth – Phenomenal Multi-platform Action RPG</h5>
													<p>by Playnery <br /> Mother of Myth is a high-quality social action role-playing game developed for smartphones, tablets and web browsers.</p>
											
													<div class="progress progress-striped active">
														 <div class="bar" style="width: 10%; height=50%;"></div><br />
													</div>			
													<div class="row-fluid">
														<div class="span4">
														<strong>10%</strong><br />funded
														</div>
														<div class="span4">
														<strong>$79</strong><br />pledged
														</div>
														<div class="span4">
														<strong>29</strong><br />day to go
														</div>	
													</div>		
	
												</div>
											</li>
											<li class="span4">
												<div class="thumbnail">    <!-- items  2  -->
													<a href="#"><img src="pic/P3/T1.jpg" alt="" href="#"></a>
													<h5>Mother of Myth – Phenomenal Multi-platform Action RPG</h5>
													<p>by Playnery <br /> Mother of Myth is a high-quality social action role-playing game developed for smartphones, tablets and web browsers.</p>
											
													<div class="progress progress-striped active">
														 <div class="bar" style="width: 10%; height=50%;"></div><br />
													</div>			
													<div class="row-fluid">
														<div class="span4">
														<strong>10%</strong><br />funded
														</div>
														<div class="span4">
														<strong>$79</strong><br />pledged
														</div>
														<div class="span4">
														<strong>29</strong><br />day to go
														</div>	
													</div>		
	
												</div>
											</li>
											<li class="span4">
												<div class="thumbnail">    <!-- items  3  -->
													<a href="#"><img src="pic/P3/T1.jpg" alt="" href="#"></a>
													<h5>Mother of Myth – Phenomenal Multi-platform Action RPG</h5>
													<p>by Playnery <br /> Mother of Myth is a high-quality social action role-playing game developed for smartphones, tablets and web browsers.</p>
											
													<div class="progress progress-striped active">
														 <div class="bar" style="width: 10%; height=50%;"></div><br />
													</div>			
													<div class="row-fluid">
														<div class="span4">
														<strong>10%</strong><br />funded
														</div>
														<div class="span4">
														<strong>$79</strong><br />pledged
														</div>
														<div class="span4">
														<strong>29</strong><br />day to go
														</div>	
													</div>		
	
												</div>
											</li>	
											<a class="pull-right" href="Discover/staffpick.html"> See more staff picks </a>
										</ul>
									</div>

					<h3>Popular This Week</h3>  <!-- Popular This Week--> 				
									<div class="row-fluid">   <!--  pick --> 
										<ul class="thumbnails">
											<li class="span4">
												<div class="thumbnail">    <!-- items  1  -->
													<a href="#"><img src="pic/P4/T1.jpg" alt="" href="#"></a>
													<h5>A better bicycle bell, made in the USA.</h5>
													<p>by Spurcycle<br />Powerful sound from a trim, precision form—a bell for any bike: modern road, mountain, or vintage townie.</p>
											
													<div class="progress progress-striped active">
														 <div class="bar" style="width: 99%; height=50%;"></div><br />
													</div>			
													<div class="row-fluid">
														<div class="span4">
														<strong>99%</strong><br />funded
														</div>
														<div class="span4">
														<strong>$1,120</strong><br />pledged
														</div>
														<div class="span4">
														<strong>15</strong><br />day to go
														</div>	
													</div>		
	
												</div>
											</li>
											<li class="span4">
												<div class="thumbnail">    <!-- items  1  -->
													<a href="#"><img src="pic/P4/T1.jpg" alt="" href="#"></a>
													<h5>A better bicycle bell, made in the USA.</h5>
													<p>by Spurcycle<br />Powerful sound from a trim, precision form—a bell for any bike: modern road, mountain, or vintage townie.</p>
											
													<div class="progress progress-striped active">
														 <div class="bar" style="width: 99%; height=50%;"></div><br />
													</div>			
													<div class="row-fluid">
														<div class="span4">
														<strong>99%</strong><br />funded
														</div>
														<div class="span4">
														<strong>$1,120</strong><br />pledged
														</div>
														<div class="span4">
														<strong>15</strong><br />day to go
														</div>	
													</div>		
	
												</div>
											</li>
											<li class="span4">
												<div class="thumbnail">    <!-- items  1  -->
													<a href="#"><img src="pic/P4/T1.jpg" alt="" href="#"></a>
													<h5>A better bicycle bell, made in the USA.</h5>
													<p>by Spurcycle<br />Powerful sound from a trim, precision form—a bell for any bike: modern road, mountain, or vintage townie.</p>
											
													<div class="progress progress-striped active">
														 <div class="bar" style="width: 99%; height=50%;"></div><br />
													</div>			
													<div class="row-fluid">
														<div class="span4">
														<strong>99%</strong><br />funded
														</div>
														<div class="span4">
														<strong>$1,120</strong><br />pledged
														</div>
														<div class="span4">
														<strong>15</strong><br />day to go
														</div>	
													</div>		
	
												</div>
											</li>
											<a class="pull-right" href="#"> See more popular this week </a>
										</ul>
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