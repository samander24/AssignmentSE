<%@page import="another.Mail"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% ArrayList<Mail> allMail=(ArrayList<Mail>)request.getAttribute("allMail"); 
	int big = allMail.size()/3;
	if(allMail.size()%3!=0)
	{
		big++;
	}
	int count = 0;

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MailBox</title>
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.css"/ rel="stylesheet">
<style>
		#headder
		{
			margin-left: auto;
			margin-right: auto;
			width: 80%;		
		}
		
		#MailBox-head
		{
			text-align: center;
		}
		#title
		{
			background-color: #f2f2f2;
		}
		#mainContent
		{
			margin-bottom: 10px;
		}
</style>

</head>
<body>
 	
 	<jsp:include page="NavBar.jsp"></jsp:include>
 	
	
	<div id="MailBox-head" class="hero-unit">
		<h2>MailBox</h2>
	</div>
		
		
	<% for(int i=0 ; i<big;i++) 
		{%>
			<div id="mainContent" class="row-fluid">
		
			<% for(int j=0;j<3&&count < allMail.size();j++,count++)
			{
				Mail temMail = allMail.get(count); %>
			<div class="span4" id="title">
				<a href="ReadMail.jsp?source=<%= temMail.getSource()%>
				&destination=<%= temMail.getDestination() %>
				&mailNumber=<%= temMail.getMailNumber() %>
				&dateSent=<%= temMail.getDateSent() %>">
				Title : <%= temMail.getTitle() %> From <%= temMail.getSource() %> 
				</a>
			</div>
			<%} %>	
			</div>
		<% }%>	
		
		
	


	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>




</body>
</html>