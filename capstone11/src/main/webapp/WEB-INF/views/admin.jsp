<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <c:if test="${loggedInFlier.role eq 'User' || loggedInFlier == null}">
				          <jsp:forward page="/index"/>
				          </c:if>
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
<<header id="header">
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
				          <li class="menu-has-children"><a href="">Pages</a>
				            <ul>
				            	  <li><a href="elements.html">Elements</a></li>
						          <li class="menu-has-children"><a href="">Level 2 </a>
						            <ul>
						              <li><a href="#">Item One</a></li>
						              <li><a href="#">Item Two</a></li>
						            </ul>
						          </li>					                		
				            </ul>
				          </li>					          					          		          
				          <li><a href="contact">Contact</a></li>				          
				          <c:if test="${loggedInFlier.getFirstName()!=null}">
				          <li><a href="/logout">Logout</a></li>
				          </c:if>
				        </ul>
				      </nav><!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header>
<%-- <c:if test ="${loggedInFlier.getRole() not eq 'Admin'}">
    <jsp:forward page="index" /></c:if>  --%>
            <!-- start banner Area -->
			<section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
					<div class="about-content col-lg-12">
					<h1 class="text-white">Admin Panel</h1>	
						
						</div>
					</div>
				</div>
			</section>
			
			
			<section class="destinations-area section-gap">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-left">
					
					<h1>Hello, ${loggedInFlier.getFirstName()}.</h1><br>
						<br><br>
						
					</div>
					${msg}
				</div>
			</section>
			<section>
			<div class="container">
				<table class="table table-bordered">
				  <thead>
				    <tr>				      
				      <th>Name</th>
				      <th>Email</th>
				      <th>Telephone</th>
				      <th>Role</th>
				    </tr>
				  </thead>
				  <tbody>
				  <c:forEach items="${users}" var="item">
				    <tr>				    		    
				     <td>
				     ${item.firstName} ${item.lastName}				        
				     </td>
				     <td>
				     ${item.email}				        
				     </td>
				     <td>
				     	${item.phone}			        
				     </td>
				     <td>
				     <form action="give-role" method="GET">
				     <div class="form-select" id="default-select">
				        <input name="id" value="${item.flierID}" type="hidden">
						<select id="role" name="role" onchange="this.form.submit()">		              
			              <option value="${item.role}" selected>  ${item.role} </option>
			              <option value="User"> User </option>
			              <option value="Admin"> Admin </option>
			             </select>
					</div>
					</form>
				     
				     </td>				     
				    </tr>
				    </c:forEach>				      
				  </tbody>
				</table>
				</div></section>
				
				<section><section>
			<div class="container">
				<table class="table table-bordered">
				  <thead>
				    <tr>				      
				      <th>Name</th>
				      <th>Email</th>
				      <th>Telephone</th>
				      <th>Role</th>
				    </tr>
				  </thead>
				  <tbody>
				  <c:forEach items="${users}" var="item">
				    <tr>				    		    
				     <td>
				     ${item.firstName} ${item.lastName}				        
				     </td>
				     <td>
				     ${item.lastName}				        
				     </td>
				     <td>
				     ${item.email}				        
				     </td>
				     <td>
				     <form action="give-role" method="GET">
				     <div class="form-select" id="default-select">
				        <input name="id" value="${item.flierID}" type="hidden">
						<select id="role" name="role" onchange="this.form.submit()">		              
			              <option value="${item.role}" selected>  ${item.role} </option>
			              <option value="User"> User </option>
			              <option value="Admin"> Admin </option>
			             </select>
					</div>
					</form>
				     
				     </td>				     
				    </tr>
				    </c:forEach>				      
				  </tbody>
				</table>
				</div></section></section>
			<!-- End banner Area -->	

			<!-- Start destinations Area -->
			

			

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