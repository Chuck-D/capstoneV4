<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
    
<header id="header">
				<div class="header-top">
					<div class="container">
			  		<div class="row align-items-center">
			  			<div class="col-lg-6 col-sm-6 col-6 header-top-left">
			  				<ul>
			  					<li><a href="#"></a></li>
			  					<li><a href="#"></a></li>
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
				        <a href="index"><img src="Styles/travel/img/logo.png" alt="" title="KneeSaver" /></a>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li><a href="index">Home</a></li>
				          <li><a href="about">About</a></li>
				          
				          <li><a href="/airline-seat-ratings3">Seat Ratings</a></li>
				          <c:if test="${loggedInFlier.role eq 'Admin'}">
				          <li><a href="admin">Admin</a></li>
				          </c:if>
				          <!-- <li><a href=""></a></li> -->
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
				          </li>		</c:if>			          					          		          
				          <li><a href="contact">Contact</a></li>				          
				          
				        </ul>
				      </nav><!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header><!-- #header -->