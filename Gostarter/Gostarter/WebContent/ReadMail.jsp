<%@page import="another.Mail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css" rel="stylesheet">

<% Mail mail = (Mail)request.getAttribute("mail"); %>

<style>


#headder
		{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
		}

#ReadMail-head
	{
		text-align: center;
	}
	
	#mainContent
	{
		background-color: #F2F2F2;
		width : 80%;
		margin-left: auto;
		margin-right: auto;
	}

</style>


</head>
<body>
	<jsp:include page="NavBar.jsp"></jsp:include>

	<div id="ReadMail-head" class="hero-unit">
		<h2>Read Mail</h2>
	</div>
	
	<div id="mainContent" class="row-fluid">
		<div id="from">
			<div class="span2">
				<strong>From</strong>
			</div>
			
			<div class="span10">
				<%= mail.getSource() %>
			</div>
			
		</div>	
		
		<div id="date">
			<div class="span2">
				<strong>Date</strong>
			</div>
			
			<div class="span10">
				<%= mail.getDateSent() %>
			</div>
			
		</div>	
		
		
		<div id="title">
			<div class="span2">
				<strong>Title</strong>	
			</div>
			
			<div class="span10">
				<%= mail.getTitle() %>
			</div>
			
		</div>
		
		<div id="description">
			<div class="span2">
				<strong>Description</strong>  
			</div>
			
			<div class="span5">
				<%= mail.getDescription() %>
			</div>
			
		</div>	
			
				
	</div>
	



</body>
</html>