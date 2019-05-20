<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="<!-- Styles/travel/img/fav.png -->">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Comfort</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="Styles/travel/css/linearicons.css">
			<link rel="stylesheet" href="Styles/travel/css/font-awesome.min.css">
			<link rel="stylesheet" href="Styles/travel/css/bootstrap.css">
			<link rel="stylesheet" href="Styles/travel/css/magnific-popup.css">
			<link rel="stylesheet" href="Styles/travel/css/jquery-ui.css">				
			<link rel="stylesheet" href="Styles/travel/css/nice-select.css">							
			<link rel="stylesheet" href="Styles/travel/css/animate.min.css">
			<link rel="stylesheet" href="Styles/travel/css/owl.carousel.css">				
			<link rel="stylesheet" href="Styles/travel/css/main.css">
			
		</head>
		<body>	
			<jsp:include page="header.jsp"></jsp:include>
			
			
			
			<!-- start banner Area -->
			<section class="banner-area relative">
				<div class="overlay overlay-bg"></div>				
				<div class="container">
					<div class="row fullscreen align-items-center justify-content-between">
						<div class="col-lg-6 col-md-6 banner-left">
							<h6 class="text-white">Basic comfort shouldn't be costly.</h6>
							<br>
							<h2 class="text-white">Demand Comfort</h2>
							<p class="text-white">
								If you are tired of uncomfortable seats with poor legroom, signup and contribute to our growing database.  Travelers, like you, will highlight those airlines who are cutting corners to increase profits.
							</p>
							<!-- <a href="#" class="primary-btn text-uppercase">Get Started</a> -->
						</div>
						<div class="col-lg-4 col-md-6 banner-right">
							<ul class="nav nav-tabs" id="myTab" role="tablist">
							  <li class="nav-item">
							    <a class="nav-link active" id="hotel-tab" data-toggle="tab" href="#hotel" role="tab" aria-controls="hotel" aria-selected="true">Log In</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" id="flight-tab" data-toggle="tab" href="#flight" role="tab" aria-controls="flight" aria-selected="false">Register</a>
							  </li>
							  
							</ul>
							<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
							
								
								<form:form id="login" action="loginFlier" method="post" modelAttribute="flier" class="form-wrap">
									<span class="text-center text-info">${msg}</span><br><br>
									<input type="email" class="form-control" name="email" placeholder="Email " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'">									
									<input type="password" class="form-control" name="password" placeholder="Password " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password '">
														
									<button class="primary-btn text-uppercase">Log In</button>									
								</form:form>							  	
							  </div>
							  <div class="tab-pane fade" id="flight" role="tabpanel" aria-labelledby="flight-tab">
								<form:form id="signup" action="registerFlier" method="post" modelAttribute="flier" class="form-wrap">
									<input type="text" class="form-control" name="firstName" placeholder="First Name " onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name '">									
									<input type="text" class="form-control" name="lastName" placeholder="Last Name " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name '">
									<input type="text" class="form-control" name="email" placeholder="Email " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email '">
									<input type="text" class="form-control" name="phone" placeholder="Phone(for text alerts) " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone '">
									<input type="password" class="form-control" name="password" placeholder="Password " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password '">
									<input type="password" class="form-control" name="passwordConfirm" placeholder="Password " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password '">
								<!--  	<input type="number" min="1" max="20" class="form-control" name="adults" placeholder="Adults " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Adults '">
									<input type="number" min="1" max="20" class="form-control" name="child" placeholder="Child " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Child '">	-->						
									<button class="primary-btn text-uppercase">Sign Up</button>									
								</form:form>
							  </div>
							  
							<!--   <div class="tab-pane fade" id="holiday" role="tabpanel" aria-labelledby="holiday-tab">
								<form:form id="signup" action="registerClient" method="post" modelAttribute="client" class="form-wrap">
									<input type="text" class="form-control" name="name" placeholder="From " onfocus="this.placeholder = ''" onblur="this.placeholder = 'From '">									
									<input type="text" class="form-control" name="to" placeholder="To " onfocus="this.placeholder = ''" onblur="this.placeholder = 'To '">
									<input type="text" class="form-control date-picker" name="start" placeholder="Start " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Start '">
									<input type="text" class="form-control date-picker" name="return" placeholder="Return " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Return '">
									<input type="number" min="1" max="20" class="form-control" name="adults" placeholder="Adults " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Adults '">
									<input type="number" min="1" max="20" class="form-control" name="child" placeholder="Child " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Child '">							
									<a href="#" class="primary-btn text-uppercase">Search Holidays</a>									
								</form:form>							  	
							  </div>--> 
							</div>
						</div>
					</div>
				</div>					
			</section>
			<!-- End banner Area -->

			<!-- Start popular-destination Area -->
			<section class="popular-destination-area section-gap">
				<div class="container">
		            <div class="row d-flex justify-content-center">
		                <div class="menu-content pb-70 col-lg-8">
		                    <div class="title text-center">
		                        <h1 class="mb-10">Popular Airlines</h1>
		                        <p>These airlines are providing the most economy legroom and comfort.  However, we need to push for better.</p>
		                    </div>
		                </div>
		            </div>						
					<div class="row">
						<div class="col-lg-4">
							<div class="single-destination relative">
								<div class="thumb relative">
									<div class="overlay overlay-bg"></div>
									<img class="img-fluid" src="Styles/travel/img/jetblue4.jpg" alt="">
								</div>
								<div class="desc">	
									<a href="#" class="price-btn">Legroom leader</a>	
									<br>		
									<h4>JetBlue</h4>
									<p></p>			
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-destination relative">
								<div class="thumb relative">
									<div class="overlay overlay-bg"></div>
									<img class="img-fluid" src="Styles/travel/img/southwest.jpg" alt="">
								</div>
								<div class="desc">	
									<a href="#" class="price-btn"></a>			
									<h4>Southwest</h4>
									<p></p>			
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="single-destination relative">
								<div class="thumb relative">
									<div class="overlay overlay-bg"></div>
									<img class="img-fluid" src="Styles/travel/img/alaska_airlines.jpg" alt="">
								</div>
								<div class="desc">	
									<a href="#" class="price-btn"></a>			
									<h4>Alaska</h4>
									<p></p>			
								</div>
							</div>
						</div>												
					</div>
				</div>	
			</section>
			<!-- End popular-destination Area -->
			

			<!-- Start price Area -->
			<section class="price-area section-gap">
				<div class="container">
		            <div class="row d-flex justify-content-center">
		                <div class="menu-content pb-70 col-lg-8">
		                    <div class="title text-center">
		                        <h1 class="mb-10">Why rate?</h1>
		                        <p>You will help fellow travelers avoid flights with inadequate space.</p>
		                    </div>
		                </div>
		            </div>						
						
			</section>
			<!-- End price Area -->
			

			<!-- Start other-issue Area -->
			<section class="other-issue-area section-gap">
				<div class="container">
		            <div class="row d-flex justify-content-center">
		                <div class="menu-content pb-70 col-lg-9">
		                    <div class="title text-center">
		                        <h1 class="mb-10">Let's work together to improve your travel experience!</h1>
		                        <p>Many of us have complained, but its time to do so with a purpose.</p>
		                    </div>
		                </div>
		            </div>					
					<div class="row">
						<div class="col-lg-3 col-md-6">
							<div class="single-other-issue">
								<div class="thumb">
									<img class="img-fluid" src="Styles/travel/img/legroom.jpeg" alt="">					
								</div>
								<a href="#">
									<h4>Legroom</h4>
								</a>
								<p>
									This scene is becoming more and more common on flights. We need to advocate for more distance between seats.
								</p>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="single-other-issue">
								<div class="thumb">
									<img class="img-fluid" src="Styles/travel/img/knees7.jpg" alt="">					
								</div>
								<a href="#">
									<h4>Cruise Booking</h4>
								</a>
								<p>
									I was always somebody who felt quite sorry for myself, what I had not got compared.
								</p>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="single-other-issue">
								<div class="thumb">
									<img class="img-fluid" src="Styles/travel/img/MAC49_AIRPLANES01.jpg" alt="">					
								</div>
								<a href="#">
									<h4>To Do List</h4>
								</a>
								<p>
									The following article covers a topic that has recently moved to center stage–at least it seems.
								</p>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="single-other-issue">
								<div class="thumb">
									<img class="img-fluid" src="Styles/travel/img/o4.jpg" alt="">					
								</div>
								<a href="#">
									<h4>Food Features</h4>
								</a>
								<p>
									There are many kinds of narratives and organizing principles. Science is driven by evidence.
								</p>
							</div>
						</div>																		
					</div>
				</div>	
			</section>
			<!-- End other-issue Area -->
			

			<!-- Start testimonial Area -->
		    <section class="testimonial-area section-gap">
		        <div class="container">
		            <div class="row d-flex justify-content-center">
		                <div class="menu-content pb-70 col-lg-8">
		                    <div class="title text-center">
		                        <h1 class="mb-10">Testimonial from our registered Fliers</h1>
		                        <p>We value the feedback</p>
		                    </div>
		                </div>
		            </div>
		            <div class="row">
		                <div class="active-testimonial">
		                    <div class="single-testimonial item d-flex flex-row">
		                        <div class="thumb">
		                            <img class="img-fluid" src="Styles/travel/img/elements/user1.png" alt="">
		                        </div>
		                        <div class="desc">
		                            <p>
		                                I had to book a last minute flight.  Thankfully, I checked this site before paying for a subpar seat.		     
		                            </p>
		                            <h4>Renae Maxwell</h4>
	                            	<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>				
									</div>	
		                        </div>
		                    </div>
		                    <div class="single-testimonial item d-flex flex-row">
		                        <div class="thumb">
		                            <img class="img-fluid" src="Styles/travel/img/elements/user2.png" alt="">
		                        </div>
		                        <div class="desc">
		                            <p>
		                               I was able to log in right to the info I needed to help me make my decision. No ads trying to get me to buy flights or vacation packages.
		                            </p>
		                            <h4>Joanna Michaels</h4>
	                           		<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>			
									</div>	
		                        </div>
		                    </div>
		                    <div class="single-testimonial item d-flex flex-row">
		                        <div class="thumb">
		                            <img class="img-fluid" src="Styles/travel/img/elements/user1.png" alt="">
		                        </div>
		                        <div class="desc">
		                            <p>
		                                Was great to also be able to get my senators contact info. Legroom legislation has been at a standstill since last year. Enough is enough!		     
		                            </p>
		                            <h4>Shanna McClain</h4>
	                            	<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>				
									</div>	
		                        </div>
		                    </div>
		                    <div class="single-testimonial item d-flex flex-row">
		                        <div class="thumb">
		                            <img class="img-fluid" src="Styles/travel/img/elements/user2.png" alt="">
		                        </div>
		                        <div class="desc">
		                            <p>
		                               Great!!!
		                            </p>
		                            <h4>Kim Jones</h4>
	                           		<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>			
									</div>	
		                        </div>
		                    </div>
		                    <div class="single-testimonial item d-flex flex-row">
		                        <div class="thumb">
		                            <img class="img-fluid" src="Styles/travel/img/elements/user1.png" alt="">
		                        </div>
		                        <div class="desc">
		                            <p>
		                                Just what I've been searching for!!
		                            </p>
		                            <h4>Isabella Rios</h4>
	                            	<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>				
									</div>	
		                        </div>
		                    </div>
		                    <div class="single-testimonial item d-flex flex-row">
		                        <div class="thumb">
		                            <img class="img-fluid" src="Styles/travel/img/elements/user2.png" alt="">
		                        </div>
		                        <div class="desc">
		                            <p>
		                                This will be perfect once the chatroom and blog are set up.
		                            </p>
		                            <h4>Chantelle Miller</h4>
	                           		<div class="star">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>			
									</div>	
		                        </div>
		                    </div>		                    		                    
		                </div>
		            </div>
		        </div>
		    </section>
		    <!-- End testimonial Area -->

			<!-- Start home-about Area -->
		
			<!-- End home-about Area -->
			
	
			<!-- Start blog Area -->
			<section class="recent-blog-area section-gap">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-60 col-lg-9">
							<div class="title text-center">
								<h1 class="mb-10">Latest from Our Blog</h1>
								<p>Allow yourself to focus on your destination, not your flight.</p>
							</div>
						</div>
					</div>							
					<div class="row">
						<div class="active-recent-blog-carusel">
							<div class="single-recent-blog-post item">
								<div class="thumb">
									<img class="img-fluid" src="Styles/travel/img/b1.jpg" alt="">
								</div>
								<div class="details">
									<div class="tags">
										<ul>
											<li>
												<a href="#">Travel</a>
											</li>
											<li>
												<a href="#">Life Style</a>
											</li>											
										</ul>
									</div>
									<a href="#"><h4 class="title"></h4></a>
									<p>
										
									</p>
									<h6 class="date"></h6>
								</div>	
							</div>
							<div class="single-recent-blog-post item">
								<div class="thumb">
									<img class="img-fluid" src="Styles/travel/img/b2.jpg" alt="">
								</div>
								<div class="details">
									<div class="tags">
										<ul>
											<li>
												<a href="#">Travel</a>
											</li>
											<li>
												<a href="#">Life Style</a>
											</li>											
										</ul>
									</div>
									<a href="#"><h4 class="title"></h4></a>
									<p>
										
									</p>
									<h6 class="date"></h6>
								</div>	
							</div>
							<div class="single-recent-blog-post item">
								<div class="thumb">
									<img class="img-fluid" src="Styles/travel/img/b3.jpg" alt="">
								</div>
								<div class="details">
									<div class="tags">
										<ul>
											<li>
												<a href="#">Travel</a>
											</li>
											<li>
												<a href="#">Life Style</a>
											</li>											
										</ul>
									</div>
									<a href="#"><h4 class="title"></h4></a>
									<p>
										
									</p>
									<h6 class="date"></h6>
								</div>	
							</div>	
							<div class="single-recent-blog-post item">
								<div class="thumb">
									<img class="img-fluid" src="Styles/travel/img/b1.jpg" alt="">
								</div>
								<div class="details">
									<div class="tags">
										<ul>
											<li>
												<a href="#">Travel</a>
											</li>
											<li>
												<a href="#">Life Style</a>
											</li>											
										</ul>
									</div>
									<a href="#"><h4 class="title"></h4></a>
									<p>
										
									</p>
									<h6 class="date"></h6>
								</div>	
							</div>
							<div class="single-recent-blog-post item">
								<div class="thumb">
									<img class="img-fluid" src="Styles/travel/img/b2.jpg" alt="">
								</div>
								<div class="details">
									<div class="tags">
										<ul>
											<li>
												<a href="#"></a>
											</li>
											<li>
												<a href="#"></a>
											</li>											
										</ul>
									</div>
									<a href="#"><h4 class="title"></h4></a>
									<p>
										
									</p>
									<h6 class="date"></h6>
								</div>	
							</div>
							<div class="single-recent-blog-post item">
								<div class="thumb">
									<img class="img-fluid" src="Styles/travel/img/b3.jpg" alt="">
								</div>
								<div class="details">
									<div class="tags">
										<ul>
											<li>
												<a href="#">Travel</a>
											</li>
											<li>
												<a href="#">Life Style</a>
											</li>											
										</ul>
									</div>
									<a href="#"><h4 class="title"></h4></a>
									<p>
										
									</p>
									<h6 class="date"></h6>
								</div>	
							</div>														

						</div>
					</div>
				</div>	
			</section>
			<!-- End recent-blog Area -->			
<jsp:include page="footer.jsp"></jsp:include>
			

			<script src="Styles/travel/js/vendor/jquery-2.2.4.min.js"></script>
			<script src="Styles/travel/js/popper.min.js"></script>
			<script src="Styles/travel/js/vendor/bootstrap.min.js"></script>			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>		
 			<script src="Styles/travel/js/jquery-ui.js"></script>					
  			<script src="Styles/travel/js/easing.min.js"></script>			
			<script src="Styles/travel/js/hoverIntent.js"></script>
			<script src="Styles/travel/js/superfish.min.js"></script>	
			<script src="Styles/travel/js/jquery.ajaxchimp.min.js"></script>
			<script src="Styles/travel/js/jquery.magnific-popup.min.js"></script>						
			<script src="Styles/travel/js/jquery.nice-select.min.js"></script>					
			<script src="Styles/travel/js/owl.carousel.min.js"></script>							
			<script src="Styles/travel/js/mail-script.js"></script>	
			<script src="Styles/travel/js/main.js"></script>	
		</body>
	</html>