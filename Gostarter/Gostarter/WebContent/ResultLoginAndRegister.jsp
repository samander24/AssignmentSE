<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css"/ rel="stylesheet">
<style>
#headder
		{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
		}
</style>		
</head>
<body>
		<jsp:include page="NavBar.jsp"></jsp:include>
		<div class="hero-unit">
			<h4><%= request.getAttribute("message") %></h4>
 <%-- 			<%if(session.getAttribute("loginUser")!=null) 
			{%>
				<a href="home.jsp">continue</a>		
			<%} else{ %>
				<a href="login.jsp">continue</a>
			<%} %>
--%>		<a
			<% if(session.getAttribute("loginUser")!=null) 
			{%>
				href="Home.jsp"
			<%} 
			else
			{%>
				href="Login.jsp"
			<%} %>
			>Continue</a>
		</div>
		<script src="http://code.jquery.com/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
</body>
</html>