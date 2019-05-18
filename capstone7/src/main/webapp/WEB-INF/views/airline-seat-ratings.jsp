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
<jsp:include page="header.jsp"></jsp:include>

<!-- start banner Area -->
			<section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Airline Comfort Ratings				
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
		                        <h1 class="mb-10">Airlines</h1>
		                        <p> Had a recent flight? Click on the rate link to make your voice heard.</p>
		                    </div>
		                   
		                    
		                </div>
		            </div>						
					<div class="row">
					
					
				<!--  	${msg.size()}
					
					<c:forEach items="${msg}" var="item">
		                    ${item.firstName}<br>
		                    </c:forEach>-->
		                    
		                    
				<!-- 		<div class="col-lg-4">
							<div class="single-destinations">
								<div class="thumb">
									<img src="Styles/travel/img/jetblue4.jpg" alt="">
								</div>
								<div class="details">
									<h4 class="d-flex justify-content-between">
										<span>JetBlue</span>                              	
										<div class="star">
										<c:if test="${JetBlueSum >= 1}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${JetBlueSum < 1}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${JetBlueSum >= 1.5 && JetBlueSum<2}">
										 	<span class="fa fa-star-half checked"></span></c:if>
											
										<c:if test="${JetBlueComfortSum >= 2}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${JetBlueComfortSum < 2}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${JetBlueComfortSum >= 2.5 && JetBlueComfortSum<3}">
										 	<span class="fa fa-star-half checked"></span></c:if>
										 	
										<c:if test="${JetBlueComfortSum >= 3}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${JetBlueCorfortSum < 3}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${JetBlueComfortSum >= 3.5 && JetBlueComfortSum<4}">
										 	<span class="fa fa-star-half checked"></span></c:if> 
										 	
										<c:if test="${JetBlueComfortSum >= 4}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${JetBlueComfortSum< 4}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${JetBlueComfortSum>= 4.5 && JetBlueComfortSum<5}">
										 	<span class="fa fa-star-half checked"></span></c:if>  		
											
										<c:if test="${JetBlueComfortSum >= 5}">
											<span class="fa fa-star checked"></span></c:if>	
									
											
											
											
													
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
											<span><span><fmt:formatNumber type="number" maxFractionDigits="1" value="${JetBlueLegroomSum/JetBlue.size()}"/></span></span>
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
									<img src="Styles/travel/img/southwest.jpg" alt="">
								</div>
								<div class="details">
									<h4 class="d-flex justify-content-between">
										<span>Southwest</span>                              	
										<div class="star">
											<c:if test="${SouthwestSum/2 >= 1}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${SouthwestSum/2 < 1}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${SouthwestSum/2 >= SouthwestSum/2<2}">
										 	<span class="fa fa-star-half checked"></span></c:if>
											<!-- <span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star-half checked"></span>
											
											<span class="fa fa-star"></span>${JetBlueComfortSum/JetBlue.size()}	
										<c:if test="${SouthwestSum/2 >= 2}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${SouthwestSum/2 < 2}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${SouthwestSum/2 >= 2.5 && SouthwestSum/2<3}">
										 	<span class="fa fa-star-half checked"></span></c:if>
										 	
										<c:if test="${SouthwestSum/2 >= 3}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${SouthwestSum/2< 3}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${SouthwestSum/2 >= 3.5 && SouthwestSum/2<4}">
										 	<span class="fa fa-star-half checked"></span></c:if> 
										 	
										<c:if test="${SouthwestSum/2 >= 4}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${SouthwestSum/2 < 4}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${SouthwestSum/2>= 4.5 && SouthwestSum/2<5}">
										 	<span class="fa fa-star-half checked"></span></c:if>  		
											
										<c:if test="${SouthwestSum/2 >= 5}">
											<span class="fa fa-star checked"></span></c:if>	
										<!--<c:if test="${SouthwestComfortSum/Southwest.size() < 5}">	
											<span class="fa fa-star"></span></c:if>
															
										</div>	
									</h4>
									<p>
										Based on: ${Southwest.size()} Reviews
									</p>
									<ul class="package-list">
										<li class="d-flex justify-content-between align-items-center">
											<span>Seat Comfort</span>
											<span><span><fmt:formatNumber type="number" maxFractionDigits="1" value="${SouthwestComfortSum/Southwest.size()}"/></span></span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Legroom</span>
											<span>No</span>
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
									<img src="Styles/travel/img/alaska_airlines.jpg" alt="">
								</div>
								<div class="details">
									<h4 class="d-flex justify-content-between">
										<span>Alaska</span>                              	
										<div class="star">
											<c:if test="${AlaskaComfortSum/Alaska.size() >= 1}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${AlaskaComfortSum/Alaska.size() < 1}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${AlaskaComfortSum/Alaska.size() >= AlaskaComfortSum/Alaska.size()<2}">
										 	<span class="fa fa-star-half checked"></span></c:if>
											<!-- <span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star-half checked"></span>
											
											<span class="fa fa-star"></span>${JetBlueComfortSum/JetBlue.size()}	
										<c:if test="${AlaskaComfortSum/Alaska.size() >= 2}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${AlaskaComfortSum/Alaska.size() < 2}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${AlaskaComfortSum/Alaska.size() >= 2.5 && AlaskaComfortSum/Alaska.size()<3}">
										 	<span class="fa fa-star-half checked"></span></c:if>
										 	
										<c:if test="${AlaskaComfortSum/Alaska.size() >= 3}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${AlaskaComfortSum/Alaska.size()< 3}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${AlaskaComfortSum/Alaska.size() >= 3.5 && AlaskaComfortSum/Alaska.size()<4}">
										 	<span class="fa fa-star-half checked"></span></c:if> 
										 	
										<c:if test="${AlaskaComfortSum/Alaska.size() >= 4}">
											<span class="fa fa-star checked"></span></c:if>	
										<c:if test="${AlaskaComfortSum/Alaska.size() < 4}">	
											<span class="fa fa-star"></span></c:if>
										<c:if test="${AlaskaComfortSum/Alaska.size()>= 4.5 && AlaskaComfortSum/Alaska.size()<5}">
										 	<span class="fa fa-star-half checked"></span></c:if>  		
											
										<c:if test="${AlaskaComfortSum/Alaska.size() >= 5}">
											<span class="fa fa-star checked"></span></c:if>	
										<!--<c:if test="${SouthwestComfortSum/Southwest.size() < 5}">	
											<span class="fa fa-star"></span></c:if>-->			
							<!--  			</div>	
									</h4>
									<p>
										Based on: ${Alaska.size()} Reviews
									</p>
									<ul class="package-list">
										<li class="d-flex justify-content-between align-items-center">
											<span>Seat Comfort</span>
											<span>Yes</span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Legroom</span>
											<span>No</span>
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
						</div>-->
						<div class="col-lg-4">
							<div class="single-destinations">
								<div class="thumb">
									<img src="Styles/travel/img/american.jpg" alt="">
								</div>
								<div class="details">
									<h4 class="d-flex justify-content-between">
										<span>American</span>                              	
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star"></span>				
										</div>	
									</h4>
									<p>
										Based on: ${American.size()} Reviews
									</p>
									<ul class="package-list">
										<li class="d-flex justify-content-between align-items-center">
											<span>Seat Comfort</span>
											<span>Yes</span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Legroom</span>
											<span>No</span>
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
									<img src="Styles/travel/img/united.jpeg" alt="">
								</div>
								<div class="details">
									<h4 class="d-flex justify-content-between">
										<span>United</span>                              	
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star"></span>				
										</div>	
									</h4>
									<p>
										Based on: ${United.size()} Reviews
									</p>
									<ul class="package-list">
										<li class="d-flex justify-content-between align-items-center">
											<span>Seat Comfort</span>
											<span>Yes</span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Legroom</span>
											<span>No</span>
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
									<img src="Styles/travel/img/delta.jpg" alt="">
								</div>
								<div class="details">
									<h4 class="d-flex justify-content-between">
										<span>Delta</span>                              	
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star"></span>				
										</div>	
									</h4>
									<p>
										Based on: ${Delta.size()} Reviews
									</p>
									<ul class="package-list">
										<li class="d-flex justify-content-between align-items-center">
											<span>Seat Comfort</span>
											<span>Yes</span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Legroom</span>
											<span>No</span>
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
									<img src="Styles/travel/img/haw2.jpeg" alt="">
								</div>
								<div class="details">
									<h4 class="d-flex justify-content-between">
										<span>Hawaiian</span>                              	
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star"></span>				
										</div>	
									</h4>
									<p>
										Based on: ${Hawaiian.size()} Reviews
									</p>
									<ul class="package-list">
										<li class="d-flex justify-content-between align-items-center">
											<span>Seat Comfort</span>
											<span>Yes</span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Legroom</span>
											<span>No</span>
										</li>
									<!--  	<li class="d-flex justify-content-between align-items-center">
											<span>Wi-fi</span>
											<span>Yes</span>
										</li>-->
																						
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
									<img src="Styles/travel/img/frontier.jpeg" alt="">
								</div>
								<div class="details">
									<h4 class="d-flex justify-content-between">
										<span>Frontier</span>                              	
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star"></span>				
										</div>	
									</h4>
									<p>
										Based on: ${Frontier.size()} Reviews
									</p>
									<ul class="package-list">
										<li class="d-flex justify-content-between align-items-center">
											<span>Seat Comfort</span>
											<span>Yes</span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Legroom</span>
											<span>No</span>
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
									<img src="Styles/travel/img/spirit8.jpeg" alt="">
								</div>
								<div class="details">
									<h4 class="d-flex justify-content-between">
										<span>Spirit</span>                              	
										<div class="star">
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star checked"></span>
											<span class="fa fa-star"></span>				
										</div>	
									</h4>
									<p>
										Based on: ${Spirit.size()} Reviews
									</p>
									<ul class="package-list">
										<li class="d-flex justify-content-between align-items-center">
											<span>Seat Comfort</span>
											<span>Yes</span>
										</li>
										<li class="d-flex justify-content-between align-items-center">
											<span>Legroom</span>
											<span>No</span>
										</li>
										
																						
										<li class="d-flex justify-content-between align-items-center">
											<span></span>
											<c:if test="${loggedInFlier.getFirstName()==null}">
											<a href="index" class="price-btn">Login to Rate</a></c:if>
											<c:if test="${loggedInFlier.getFirstName()!=null}">
											<a href="survey" class="price-btn">Rate</a></c:if>
										</li>	-->												
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
								Plan ahead to avoid the<br>
								discomfort associated with <br>
								poor seating and lack of<br>
								proper legroom.
							</h1>
							<p>
								Many of us have taken flights that seemed like a great deal at the time.  But, it turned out to be hours of our knees being subject to unnecessary punishment.
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