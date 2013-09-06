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
	   	
	   		#buttonDiv
	   	{
	   		
	   		text-align:center;
	   		border-bottom: none !important;
	   			
	   	}
	   	
	   	#seventhing > div > div
	   	{
	   		margin-top: 5%;
	   		margin-bottom: 3%;
	   		border-bottom: 1px solid #000000;
	   	}
</style>

</head>


<body>

	<jsp:include page="NavBar.jsp"></jsp:include>
	
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
	
	<div class="row-fluid" id="seventhing">
		<div class=" offset2 span8">
			<div>
				<h2>1. Kickstarter is a new way to fund creative projects.</h2>
				<p>We’re a home for everything from films, games, and music to art, design, and technology. Kickstarter is full of projects, big and small, that are brought to life through the direct support of people like you. Since our launch in 2009, more than 4.7 million people have pledged over $761 million, funding more than 47,000 creative projects. Thousands of creative projects are raising funds on Kickstarter right now.</p>
			</div>
			
			<div>
				<h2>2. Each project is independently created.</h2>
				<p>The filmmakers, musicians, artists, and designers you see on Kickstarter have complete control over and responsibility for their projects. Kickstarter is a platform and a resource; we’re not involved in the development of the projects themselves. Anyone can launch a project on Kickstarter as long as it meets our guidelines.</p>
			</div>	
			
			<div>
				<h2>3. Together, creators and backers make projects happen.</h2>
				<p>Project creators set a funding goal and deadline. If people like a project, they can pledge money to make it happen. Funding on Kickstarter is all-or-nothing — projects must reach their funding goals to receive any money. All-or-nothing funding might seem scary, but it’s amazingly effective in creating momentum and rallying people around an idea. To date, an impressive 44% of projects have reached their funding goals.</p>
			</div>
			
			<div>
				<h2>4. Creators keep 100% ownership of their work.</h2>
				<p>Backers are supporting projects to help them come to life, not to profit financially. Instead, project creators offer rewards to thank backers for their support. Backers of an effort to make a book or film, for example, often get a copy of the finished work. A bigger pledge to a film project might get you into the premiere — or a private screening for you and your friends. One artist raised funds to create a wall installation, then gave pieces of it to her backers when the exhibit ended.</p>
			</div>
			<div>
				<h2>5. Creative works were funded this way for centuries.</h2>
				<p>Mozart, Beethoven, Whitman, Twain, and other artists funded works in similar ways — not just with help from large patrons, but by soliciting money from smaller patrons, often called subscribers. In return for their support, these subscribers might have received an early copy or special edition of the work. Kickstarter is an extension of this model, turbocharged by the web.</p>
			</div>
			<div>
				<h2>6. Backing a project is more than just giving someone money.</h2>
				<p>It’s supporting their dream to create something that they want to see exist in the world. People rally around their friends’ projects, fans support people they admire, and others simply come to Kickstarter to be inspired by new ideas. Some projects take longer than anticipated, but creators who are transparent about issues and delays usually find their backers to be understanding.</p>
			</div>
			
			<div>
				<h2>7. Our mission is to help bring creative projects to life.</h2>
				<p>We’re a for-profit company based in New York City’s Lower East Side. We spend our time making Kickstarter a little bit better every day, answering questions from backers and creators, and finding new projects to share. If a project is successfully funded, we apply a 5% fee to the funds collected.

We believe that creative projects make for a better world, and we’re thrilled to help support new ones. Building a community of backers around an idea is an amazing way to make something new.</p>
			</div>
			
			<div id="buttonDiv">
				<a href="#" class="btn btn-large btn-success">Start your project</a>
				<a href="#" class="btn btn-large btn-info">Top project</a>
			</div>
		</div>
		
	</div>
	
			

	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	


</body>
</html>