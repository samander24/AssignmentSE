<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>StartProject</title>

	<link href="css/bootstrap.css" rel="stylesheet" media="screen">
	<link href="css/bootstrap-responsive.css"/ rel="stylesheet">
	<link href="css/cssForStartProjectTabBasic.css" rel="stylesheet" />
	<link href="css/cssForStartProjectTabAboutyou.css" rel="stylesheet" />
	<link href="css/cssForStartProjectTabAccount.css" rel="stylesheet" />
	<link href="css/cssForStartProjectTabRewards.css" rel="stylesheet" />

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

<div class="row-fluid" id="container">
		   <div class="bs-docs-example of ">
	            <ul id="myTab" class="nav nav-tabs">
	              <li class="active"><a href="#Guildlines" data-toggle="tab">Guildlines</a></li>
	              <li><a href="#Basics" data-toggle="tab">Basics</a></li>
	           
	              <li><a href="#Story" data-toggle="tab">Story</a></li>
	              <li><a href="#Aboutyou" data-toggle="tab">About you</a></li>
	              <li><a href="#Account" data-toggle="tab">Account</a></li>
	          	  <li><a href="#Review" data-toggle="tab">Review</a></li>
	              
	            </ul>
	            <form action="StartProject" method="post"> 
		            <div id="myTabContent" class="tab-content">
		              <div class="tab-pane fade in active" id="Guildlines">
		                <div class="hero-unit">	
		              		<h2>Everything on Kickstarter must be a project.</h2>
		              		<p>A project is something with a clear end, like making an album, a film, or a new game. A project will eventually be completed, and something will be produced as a result.</p>
		                </div>
		                
		                <div class="hero-unit">	
		                	<h2>Every project on Kickstarter must fit into one of our categories.</h2>
							<p>Our categories are Art, Comics, Dance, Design, Fashion, Film, Food, Games, Music, Photography, Publishing, Technology, and Theater.</p>		                
		                </div>	
		                	
		                	
		                <div class="hero-unit">	
		                	<h2>Are those the only guidelines?</h2>
		                	<p>Those are the main two, but read on for specific uses of Kickstarter that are not allowed, and note that Hardware and Product Design projects have additional guidelines below. We don't curate projects based on taste. Instead, we do a quick check to make sure they meet these guidelines.</p>
		                </div>	
		                
		                 <div class="hero-unit">	
		                	<h2>Who can create a project on Kickstarter?</h2>
		                	<p>Creating projects is currently open to US, UK, and Canadian creators over the age of 18 (see full details). Businesses, nonprofits, and other organizations can also use Kickstarter to fund their creative projects.</p>
		                </div>
		                	
		                 <div class="hero-unit">	
		                	<h2>What is not allowed?</h2>
		                	<ul>
		                		<li>Kickstarter cannot be used to raise money for causes, whether it's the Red Cross or a scholarship, or for "fund my life" projects, like tuition or bills.</li>
		                		<li>Kickstarter cannot be used to sell equity or solicit loans.</li>
		                		<li>Projects cannot resell items or offer rewards not produced by the project or its creator.</li>
		                		<li>Creators cannot promise to donate a portion of funds raised or future revenue to a cause.</li>
		                		<li>Projects cannot offer rewards in bulk quantities (more than 10).</li>
		                		<li>Kickstarter cannot be used to fund e-commerce, business, and social networking websites or apps.</li>
		                		<li>Kickstarter cannot be used to fund software projects not run by the developers themselves.</li>
		                		<li>Kickstarter cannot be used to buy real estate.</li>
		                		<li>Projects cannot offer alcohol as a reward.</li>
		                		<li>Projects cannot offer genetically modified organisms as a reward. (Updated 7/31/2013)</li>
		                		<li>No self-help material (books, videos, etc). This includes projects that offer (or produce materials that offer) business, emotional, financial, health, medical, sex/seduction, or other self-help advice.</li>
		                		<li>No offensive material (hate speech, etc.); pornographic material; or projects endorsing or opposing a political candidate.</li>
		                		<li>No tobacco, drugs, and drug paraphernalia; energy food and drinks; or nutritional supplements.</li>
		                		<li>No contests, raffles, coupons, or lifetime memberships.</li>
		                		<li>No bath, beauty, and cosmetic products; electronic surveillance equipment; eyewear (sunglasses, prescription glasses, and others); firearms, weapons, knives, weapon accessories, and replicas of weapons; medical, health, safety, and personal care products; or infomercial-type products.</li>
		                	</ul>
		                </div>
		                
		                 <div class="hero-unit">	
		                	<h2>Hardware and Product Design guidelines</h2>
		                	
		                	<ul>
		                		<li>
		                			<h3>Show your work</h3>
		                			<p>Projects must be clear about their state of development, and cannot be presented as preorders of finished products. Projects must show details (photos, videos, sketches) of their progress so far, along with a prototype demonstrating the product's current functionality. Projects must explain how the final design is likely to differ from the prototype, and include a production plan (i.e., how you're going to make it) and an estimated timeline.</p>
		                		</li>
		                		<li>
		                			<h3>No product simulations or photorealistic renderings</h3>
		                			<p>Technical drawings, CAD designs, sketches, and other parts of the design process are awesome and encouraged. Photorealistic renderings and simulations that could be mistaken for finished products or real events, however, are not allowed.</p>
		                		</li>
		                		<li>
		                			<h3>Single servings</h3>
		                			<p>Product Design and Hardware projects can only offer one reward per pledge. Offering multiple quantities can imply that rewards are shrink-wrapped and ready to ship when they’re not. With some projects, we'll make exceptions for what we consider sensible sets — things like salt and pepper shakers, notebooks, building blocks, etc.</p>
		                		</li>
		                		
		                	</ul>
		                	
		                	<h2>About these guidelines</h2>
		                	<p>Kickstarter’s mission is to help bring creative projects to life. Since launching in April 2009, we’ve adjusted these guidelines several times — to add more of them to fit new uses, or to simplify them as we learn (and after seeing 100,000+ projects, we’ve learned a ton). The guidelines are never perfect, but we care deeply about trying to get them right. We aim to be as open as possible while protecting the health and creative spirit of Kickstarter for the long term. Thanks for reading.</p>
		              </div>
		              </div>
		              <div class="tab-pane fade row-fluid" id="Basics">
		                
			                <div class="hero-unit" id="Basics-Head">
			                	<h2>Meet your new project</h2>
			                	<p>Start by giving it a name, a pic, and other important details.</p>
			                </div>
			                
			                <div class="offset1 span7" id="leftContend">
		                
			                	<div id="contendProjectTitle" >
			                		
			                		<div class="span3">
			                			<strong>Project title</strong>
			                		</div>
			                		<div class="span9">
			                			<input type="text" name="projectTitle" /><br />
											Your project title should be simple, specific, and memorable, and it should include 
											the title of the creative project you're raising funds for. Avoid words like "help","support","fund" 
			                		</div>
					               
			                	</div>
		                	  	
		                	  	<div id="contendCetegory">
		                	  		
		                	  		<div class="span3">
			                			<strong>Cetegory</strong>
			                		</div>
			                		<div class="span9">
			                			
			                			<select name="cetegory">
			                				<option value="game">Game</option>
			                				<option value="music">Music</option>
			                				<option value="art">Art</option>
			                			</select>
			                		</div>
		                	  		
		                	  	</div>
		                	  	
		                	  	<div id="contendShortBlurb">
		                	  		
		                	  		<div class="span3">
			                			<strong>Short blurb</strong>
			                		</div>
			                		<div class="span9">
			                			<textarea cols="100" rows="3" name="shortBlurp"></textarea><br />
			                			If you had to describe your project in one tweet, how would you do it?
			                		</div>
		                	  		
		                	  	</div>
		                	  	
		                	  	<div id="contendLocation">
		                	  		
		                	  		<div class="span3">
			                			<strong>Location</strong>
			                		</div>
			                		<div class="span9">
			                			<input type="text" name="location"/><br />

			                		</div>
		                	  		
		                	  	</div>
		                	  	
		                	  	<div id="contendFundingDuration">
		                	  		<div class="span3">
			                			<strong>Funding duration</strong>
			                		</div>
			                		<div class="span9">
			                			<select name="day">
			                				
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>	
			                			
			                			
			                			</select>
			                			
			                			<select name="month">
											
											<option value="1">January</option>
											<option value="2">February</option>
											<option value="3">March</option>
											<option value="4">April</option>
											<option value="5">May</option>
											<option value="6">June</option>
											<option value="7">July</option>
											<option value="8">August</option>
											<option value="9">September</option>
											<option value="10">October</option>
											<option value="11">November</option>
											<option value="12">December</option>
										</select>
										
										<select name="year" >
											
											<option value="2013">2013</option>
											<option value="2014">2014</option>
											<option value="2015">2015</option>
											<option value="2016">2016</option>
											<option value="2017">2017</option>
											<option value="2018">2018</option>
										</select>
										
										
			                			
			                			
			                			<p>
			                				Note: After your project ends, there is a 14-day window for collecting and processing pledges. After that, you can transfer funds from your Amazon account to your bank account. Please plan accordingly.
			                			</p>
			                			
			                		</div>
		                	  	</div>
		                	  	
		                	  	<div id="contndFundingGoal">
		                	  		<div class="span3">
			                			<strong>Funding goal</strong>
			                		</div>
			                		<div class="span9">
			                			<input type="text" name="fundingGoal" /><br />
			                			<p>Your funding goal should be the minimum amount needed to complete the project and fulfill all rewards. Because funding is all-or-nothing, you can always raise more than your goal but never less.</p>
			                			<p>If your project is successfully funded, Kickstarter will apply a 5% fee to the funds raised, and Amazon will apply credit card processing fees (between 3-5%). If funding isn't successful, there are no fees.</p>
			                		</div>
		                	  		
		                	  	</div>
		                	  	
		                	</div>
		                	
		                	<div class="span3" >
		                		
		                	</div>
		                	
		              </div>
		              

		              
		              <div class="tab-pane fade" id="Story">
		                <div class="hero-unit pagination-centered" >
									  <h2>It's not just a project, it's a story.</h2>
									  <small>Tell it with a video. It doesn't have to be fancy, it just has to be you.</small>  
									</div>
									<div class="row-fluid" >
										<div class="span9">
											
											<div class="row-fluid" id="BGBlue">
												<div class="span3" >
													<h5>&nbsp;&nbsp;Project Video</h5>
												</div>
												<div class="span9" >
													<div>
														<input name="urlVideo" type="text" placeholder="URL Video" />
													</div>
													<p>
														<strong style="color:red;">Plese Youtube Link</strong> <br/>
														The most important thing about project videos? Making one. Projects with a video have a much higher chance of success. It doesn't need to be an Oscar contender, just be yourself and explain what you want to do. For helpful tips and a dose of inspiration, check out our post on making an awesome project video.
													</p>
												</div>												
											</div>	
											<div class="row-fluid"> <br /> </div>
											
											
											<div class="row-fluid" id="BGBlue">
												<div class="span3" >
													<h5>&nbsp;&nbsp;Project Picture</h5>
												</div>
												<div class="span9" >
													<div>
														<input name="urlProjectPicture" type="text" placeholder="URL Project Picture" />
													</div>
													<p>
														The most important thing about project videos? Making one. Projects with a video have a much higher chance of success. It doesn't need to be an Oscar contender, just be yourself and explain what you want to do. For helpful tips and a dose of inspiration, check out our post on making an awesome project video.
													</p>
												</div>												
											</div>	
											<div class="row-fluid"> <br /> </div>
										
											<div class="row-fluid" id="BGBlue">
												<div class="span3" >
													<h5>&nbsp;&nbsp;Project Description</h5>
												</div>
												<div class="span9" >
													<p>
														Use your project description to share more about what you're raising funds to do and how you plan to pull it off. It's up to you to make the case for your project.
													</p>
													<textarea name="projectDescription" rows="5" cols="75" autofocus="autofocus">Enter text here...</textarea>
													
												</div>												
											</div>	

											<div class="row-fluid"> <br /> </div>
											<div class="row-fluid" id="BGBlue">
												<div class="span3" >
													<h5>&nbsp;&nbsp;Risks and challenges</h5>
												</div>
												<div class="span9" >
													<p>
														<strong>What are the risks and challenges that come with completing your project, and how are you qualified to overcome them?</strong><br /><br />
														When it comes to fulfillment, every project has potential obstacles, from production delays to permits to collaborator mishaps. What unique challenges might you face after your project is successfully funded? And if setbacks do arise (we hope they don't, but it happens!), how will you tackle them?<br /><br />
														Addressing this from the start helps build a supportive community. Backers will understand your project is a work in progress and feel confident that you'll work hard to follow through, even when faced with challenges.<br/>
													</p>
													<textarea name="risksAndChallenges" rows="5" cols="75" autofocus="autofocus">Enter text here...</textarea>
													
												</div>												
											</div>

											<div class="row-fluid"> <br /> </div>
											<div class="row-fluid" id="BGBlue">
												<div class="span3" >
													<h5>&nbsp;&nbsp;Project FAQs</h5>
												</div>
												<div class="span9" >
													<p>
														You'll be able to add FAQs on your project page once your project goes live.
													</p>
												
												</div>												
											</div>													
										</div>
										
										
										
										
										<div class="span3">
											<a href="#">
											<iframe width="100%" height="200" src="http://www.youtube.com/embed/2FC7yx9NVNI?autoplay=0;" frameborder="0" allowfullscreen></iframe>
											<h5>Make an awesome video</h5></a>
										
											
											<h5>Important reminder</h5>
											<p>Don't use music, images, video, or other content that you don't have the rights to. Reusing copyrighted material is almost always against the law and can lead to expensive lawsuits down the road. The easiest way to avoid copyright troubles is to create all the content yourself or use content that is free for public use.
												For legal, mostly free alternatives, check out some of these great resources: SoundCloud, Vimeo Music Store, Free Music Archive, and ccMixter.</p>
										</div>
									</div>
									
									
									
		              </div>
		              
		              <div class="tab-pane fade" id="Aboutyou">
		                
		                	 <div class="hero-unit" id="Aboutyou-Head">
			                	<h2>Now a little bit about you.</h2>
			                	<p>Tell people who you are! Supporting links are always nice.</p>
			                </div>
			                
			                <div class="offset1 span7" id="leftContend">
		                
			                	<div id="contendProfilePhoto" >
			                		
			                		<div class="span3">
			                			<strong>ProfilePhoto</strong>
			                		</div>
			                		<div class="span9">
			                			<input name="urlProfilePhoto" type="text" />
			                		</div>   
			                	</div>
		                	  	
		                	  	
		                	  	
		                	  	<div id="contendName">
		                	  		
		                	  		<div class="span3">
			                			<strong>Name</strong>
			                		</div>
			                		<div class="span9">
			                			<input name="profileName" type="text" /><br />
			                			If you had to describe your project in one tweet, how would you do it?
			                		</div>
		                	  		
		                	  	</div>
		                	  	
		                	  	<div id="contendBiography">
		                	  		
		                	  		<div id="contendBiography">
		                	  		
			                	  		<div class="span3">
				                			<strong>Biography</strong>
				                		</div>
				                		<div class="span9">
				                			<textarea name="biography" cols="100" rows="10"></textarea><br />
				                			
				                		</div>
		                	  		
		                	  		</div>
		                	  	
		                	  		
		                	  	</div>
		              
		                	</div>
		                	
		                	<div class="span3" style="background-color: ">
		                		<h4>Important notes on accountability</h4>
		                		<p>Part of every creatorโ€s job is earning their backersโ€ trust, especially backers who donโ€t personally know them. Itโ€s up to you to make the case that you can successfully bring your project to life. Present your qualifications and share links that help reinforce them.</p>
		                		
		                		<h4>Returning creators</h4>
		                		<p>Launching another project? Awesome! For the sake of transparency, just be sure all of them are under the same account. In special circumstances where this won't work (this project a solo album, the last one was with your mariachi band) just be sure to link to any previous projects in your bio.</p>
		                	</div>
		              </div>
		              
		              <div class="tab-pane fade" id="Account">
		                
		                	 <div class="hero-unit" id="Account-Head">
			                	<h2>Some housekeeping.</h2>
			                	<p>Get your account verified and ready to receive pledges.</p>
			                </div>
			                
			                <div class="offset1 span7" id="leftContend">
		                
			                	<div id="contendAmazonPayment" >
			                		
			                		<div class="span3">
			                			<strong>AmazonPayment</strong>
			                		</div>
			                		<div class="span9">
			                			<h4>Step 1: Connect to Amazon Payments</h4>
										<p>An Amazon Payments business account is required for processing credit card transactions and receiving funds. If you already have a business account, you can sign in as a returning customer.</p>
			                			
			                			<p>Note: An Amazon Payments account is different from the Amazon.com account you use for shopping!</p>
			                			
			                			<p>After setup, you must verify your account, which can take up to 7 days.</p>
			                			<input type="text" name="amazonPayment"></input>
			                		</div>
					               
			                	</div>
		                	 
		                	  	<div id="contendIdentity">
		                	  		
		                	  		<div class="span3">
			                			<strong>Identity verification</strong>
			                		</div>
			                		<div class="span9">
			                			<h4>Verify your identity with Kickstarter</h4>
			                			<p>Every project requires a verified Kickstarter account. If you are running this project as an individual, verify your own name. If you are running this project as a legal entity (e.g. company or organization), verify your identity as the representative of this entity.</p>
			                			<div class="innerDiv">
				                			<div class="span3" >
				                				legelname
				                			</div>
				                			<div class="span8" id="rightInput">
				                				<input name="identityName" id="identityName" type="text" placeholder="name" />
				                				<input name="identityLastName" id="IdentityLastName"type="text" placeholder="lastname"/>
				                			</div>
			                			</div>
			                			
			                			
			                			
			                			<div class="innerDiv">
				                			<div class="span3" >
				                				HomeAddress
				                			</div>
				                			<div class="span8" id="rightInput">
				                				<input name="identityAddress" id="identityAddress" type="text" placeholder="address" />
				                				<input name="identityCity" id="identityCity" type="text" placeholder="city"/>
				                				<select name="identityStage" id="identityStage">
				                					<option>stage</option>
				                				</select>
				                				<input name="zipCode" type="text" placeholder="zipCode" />
				                				<span>In UnitedStage</span>
				                				
				                			</div>
			                			</div>
			                		
			   	
			                		</div>
		                	  		
		                	  	</div>
		                	  	
		                	  	
		                	  			                	
		                	
		                	
		                
		              </div>
		              		<div class="span3" >
		                		<h5>Eligibility requirements</h5>
		                		<p>
		                			To be eligible to start a Kickstarter project as a US creator, you need to satisfy the requirements of Amazon Payments:
		                		</p>
		                		
		                		<ul>
		                			<li>You are a permanent US resident with a Social Security Number (or EIN).
</li>
		                			<li>You have a US address, US bank account, and US state-issued ID (driverเน€เธ๏ฟฝเน๏ฟฝเธเนเธเธs license).</li>
		                			<li>You have a major US credit or debit card.</li>
		                			<li>You are 18 years of age or older.</li>
		                		</ul>
		                		
		                	</div>
		              </div>
		              <div class="tab-pane fade" id="Review">
		                	<div class="hero-unit pagination-centered" >
									  <h2>The homestretch!</h2>
									  <small>Once everything is in place, submit your project for review.</small>  
									</div>
									<div class="row-fluid" >
										<div class="span9">
											<h3>Before you submit</h3>
											<p>
												Make sure you have:	
											<ul>
												<li>Clearly explained what you're raising funds to do.</li>
												<li>Added a video! It's the best way to connect with your backers.</li>
												<li>Created a series of well-priced, fun rewards. Not just thank-yous!</li>
												<li>Previewed your project and gotten feedback from a friend.</li>
												<li>Checked out other projects on Kickstarter and backed one to get a feel for the experience.</li>
											</ul><br />
											</p>
											
											<h3>After you submit</h3>
											<p>
												Once you've done everything listed above and submitted your project for review:
											<ul>
												<li>Your project will be reviewed to ensure it meets the Project Guidelines.</li>
												<li>Within a few days, we'll send you a message about the status of your project.</li>
												<li>If approved, you can launch whenever you're ready.</li>
											</ul><br />
											<input class="btn btn-info" type="submit" value="Submit"></input>
											</p>
										</div>
										<div class="span3">
											<img src="pic/nopic.png"> 
											<p>
											<h4>Untitle</h4>
											by User <br /><br />
											
											<strong>Status: </strong> Unsubmitted
											</p>
										</div>
							  </div>

							</div>			
		              </div>
		              
		            
		        </form>    
	      </div>	
	</div>



	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>