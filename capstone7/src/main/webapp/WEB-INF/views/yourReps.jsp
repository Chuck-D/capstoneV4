<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="Styles/travel/img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Seating Comfort</title>

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
<header id="header">
				<div class="header-top">
					<div class="container">
			  		<div class="row align-items-center">
			  			<div class="col-lg-6 col-sm-6 col-6 header-top-left">
			  				<ul>
			  					<li><a href="#">Visit Us</a></li>
			  					<li><a href="#">Buy Tickets</a></li>
			  				</ul>			
			  			</div>
			  			<div class="col-lg-6 col-sm-6 col-6 header-top-right">
							<div class="header-social">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-behance"></i></a>
							</div>
			  			</div>
			  		</div>			  					
					</div>
				</div>
				<div class="container main-menu">
					<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <a href="index"><img src="Styles/travel/img/logo.png" alt="" title="" /></a>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li><a href="index">Home</a></li>
				          <li><a href="about">About</a></li>
				          
				          <c:if test="${loggedInFlier.role eq 'Admin'}">
				          <li><a href="admin">Admin</a></li>
				          </c:if>
				          <li><a href="airline-seat-ratings3">Seat Ratings</a></li>
				          <li><a href=""></a></li>
				          <li class="menu-has-children"><a href="">Blog</a>
				            <ul>
				              <li><a href="blog-home.html">Blog Home</a></li>
				              <li><a href="blog-single.html">Blog Single</a></li>
				            </ul>
				          </li>	
				          <c:if test="${loggedInFlier eq true}">
				          <li class="menu-has-children"><a href="yourReps">Congress</a>
				            <ul>
				            	  <li><a href="yourReps">Your Reps</a></li>
						          				                		
				            </ul>
				          </li>	</c:if>			          					          		          
				          <li><a href="contact">Contact</a></li>				          
				          <c:if test="${loggedInFlier.getFirstName()!=null}">
				          <li><a href="/logout">Logout</a></li>
				          </c:if>
				        </ul>
				      </nav><!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header>

<!-- start banner Area -->
			<section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Your elected Officials 	<br>
											
							</h1>	
							<p class="text-white link-nav"><a href="index">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="hotels.airline-seat-ratings"> Ratings</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start destinations Area -->
			<section class="destinations-area section-gap">
				<div class="container">
		            <div class="row d-flex justify-content-center">
		                <div class="menu-content pb-40 col-lg-8">
		                    <div class="title text-center">
		                        <h1 class="mb-10">Congress</h1>
		                        <p> These are the individuals elected to represent YOU!</p>
		                    
		                    </div>
		                   
		                    
		                </div>
		            </div>						
					<div class="row">
					
				
		                    
		                    
						<div class="col-lg-4">
							<div class="single-destinations">
								<div class="thumb">
									<img src="Styles/travel/img/blunt.jpg" alt="">
									
								</div>
								<div class="details">
									<h4 class="d-flex justify-content-between">
										<span>${senator1}</span>                              	
										<div class="star">
										
										 	
										 
											
											
											
													
										</div>	
									</h4>
									<p>
										Based on: ${JetBlue.size()} Reviews 
									</p>
									<ul class="package-list">
										<li class="d-flex justify-content-between align-items-center">
											<span>Seat Comfort</span>
											<span><fmt:formatNumber type="number" maxFractionDigits="1" value="${JetBlueComfortSum/JetBlue.size()}"/></span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Legroom</span>
											<span><fmt:formatNumber type="number" maxFractionDigits="1" value="${JetBlueLegroomSum/JetBlue.size()}"/></span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Wi-fi</span>
											<span>Yes</span>
										</li>
																
										<li class="d-flex justify-content-between align-items-center">
											<span></span>
											<c:if test="${loggedInFlier.getFirstName()==null}">
											<a href="index" class="price-btn">Login to Rate</a></c:if>
											<c:if test="${loggedInFlier.getFirstName()!=null}">
											<a href="survey" class="price-btn">Rate</a></c:if>
										</li>													
									</ul>
								</div>
							</div>
						</div>
						
						
						<div class="col-lg-4">
							<div class="single-destinations">
								<div class="thumb">
									<img src="Styles/travel/img/hawley.jpg" alt="">
								</div>
								<div class="details">
									<h4 class="d-flex justify-content-between">
										<span>${senator2}</span>                              	
										<div class="star">
														
										</div>	
									</h4>
									<p>
										Based on: ${Spirit.size()} Reviews
									</p>
									<ul class="package-list">
										<li class="d-flex justify-content-between align-items-center">
											<span>Seat Comfort</span>
											<span><fmt:formatNumber type="number" maxFractionDigits="1" value="${SpiritComfortSum/Spirit.size()}"/></span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Legroom</span>
											<span><fmt:formatNumber type="number" maxFractionDigits="1" value="${SpiritLegroomSum/Spirit.size()}"/></span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Wi-fi</span>
											<span><span><fmt:formatNumber type="number" maxFractionDigits="1" value="${SpiritLegroomSum/Spirit.size()}"/></span></span>
										</li>
																						
										<li class="d-flex justify-content-between align-items-center">
											<span></span>
											<c:if test="${loggedInFlier.getFirstName()==null}">
											<a href="index" class="price-btn">Login to Rate</a></c:if>
											<c:if test="${loggedInFlier.getFirstName()!=null}">
											<a href="survey" class="price-btn">Rate</a></c:if>
										</li>													
									</ul>
								</div>
							</div>
						</div>
						
																																			
					</div>
				</div>	
			</section>
			<!-- End destinations Area -->
			

			<!-- Start home-about Area -->
			<section class="home-about-area">
				<div class="container-fluid">
					<div class="row align-items-center justify-content-end">
						<div class="col-lg-6 col-md-12 home-about-left">
							<h1>
								Bill(insert number) was<br>
								issued on ...<br>
								
							</h1>
							<p>Let your elected officials know that you are monitoring the slow
							progress of the bill.  Send them an email and MAKE YOUR VOICE HEARD!!
								
							</p>
							<a href="#" class="primary-btn text-uppercase">Make your voice heard!</a>
						</div>
						<div class="col-lg-6 col-md-12 home-about-right no-padding">
							<img class="img-fluid" src="Styles/travel/img/knees.jpg" alt="">
						</div>
					</div>
				</div>	
			</section>
			<!-- End home-about Area -->

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