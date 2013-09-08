    
    <header><!--------Header Nav------->
			<div class="container-fluid">
				<div id="headder" class="row-fluid">
					<div class="span12">
						<div class="navbar">
							<div class="navbar-inner">
								<a href="Home.jsp" class="brand" >GO<font color="#3399FF">STARTER</font></a>
								<ul class="nav" id="myNav">
									<li><a href="WhatIsKickStarter.jsp"><strong>What is<br/>Kick Starter</strong></a></li>
									<li><a href="Discover.jsp"><strong>Discover</strong><br />grate Project</a></li>
									<li><a href="Start.jsp"><strong>Start</strong><br />your Project</a></li>
									<li>
										<form action="Search" method="get"  class="form-search">
											  <input type="text" name="keyWord" class="input-medium search-query">
											  <button type="submit" class="btn">Search</button>
										</form>
									</li>
								</ul>
								<% if(session.getAttribute("loginUser")==null)
								{ %>
								<ul class="nav pull-right">
									<li><a href="#">Help</a></li>
									<li><a href="Login.jsp">Sign up</a></li>
									<li><a href="Login.jsp">Log in</a></li>
								</ul>
								<% } 
								else 
								{ %>
								
								 <ul class="nav pull-right">
                    				<li id="fat-menu" class="dropdown">
                     				<a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">
                     				<strong>
                     				<% beans.User loginUser =(beans.User)session.getAttribute("loginUser"); %> 
                     				<%= loginUser.getName() %>
                     				</strong>
                     				<b class="caret"></b></a>
                      				<ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
                        				<li role="presentation"><a role="menuitem" tabindex="-1" href="Profile.jsp">Profile</a></li>
                        				<li role="presentation"><a role="menuitem" tabindex="-1" href="#">EditProfile</a></li>
                        				<li role="presentation"><a role="menuitem" tabindex="-1" href="UserProject.jsp">YourProject</a></li>
              							<li role="presentation"><a role="menuitem" tabindex="-1" href="SentMail.jsp">SentMail</a></li>
              							<li role="presentation"><a role="menuitem" tabindex="-1" href="MailBox.jsp">Mailbox</a></li>
              							<li role="presentation"><a role="menuitem" tabindex="-1" href="Logout.jsp">Logout</a></li>
                      					
                      				</ul>
                    				</li>
                  				</ul>
								<% } %>
								
							</div>
						</div>
					</div>	
				</div>	
			</div>
		</header>