<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.brocode.model.State" %>   
<%@ page import="com.brocode.model.City" %> 
<%@ page import="com.brocode.model.Area" %>
<%@ page import="com.brocode.model.User" %>
<!DOCTYPE html>
<html>
<head>
	<%@include file="head.jsp" %>
</head>
<body>
 <%if(session.getAttribute("user")==null)
	response.sendRedirect("error");%>

<div id="page-wrapper">
    <div class="row"> 
	<header id="header" class="transparent-header-modern fixed-header-bg-white w-100">
            <div class="top-header bg-secondary">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <ul class="top-contact list-text-white ml-3 d-table">
                                <li><a href="callto:012345678102"><i class="fas fa-phone-alt text-primary mr-1"></i>8987965978</a></li>
                                <li><a href="mailto:office@example.com"><i class="fas fa-envelope text-primary mr-1"></i>garageinyourpocket@gmail.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <%@include file="header.jsp" %>
        </header>
        
        
        
        <div class="full-row py-5 bg-gray">
            <div class="container">
                
                    <div class="row">
                     <div class="col-lg-12">
 
                          <center><label style="color:#2980B6;font-size:25px;">Hi,<% User user = (User)session.getAttribute("user"); %> 
		                         <% out.println(user.getFname()); %>  
		                         <% out.print(user.getLname()); %>
		                          <b class="caret"></b>!</label></center>
        </div>        
        <!--	Slider
        ===============================================================-->
        <div class="full-row overflow-hidden p-0">
            <div id="gastronomy-slider" style="width:1280px; height:520px; margin:0 auto; margin-bottom: 0px;"> 
                
                <!-- Slide 1-->
                <div class="ls-slide" data-ls="kenburnsscale:1.2; duration:12000;"> <img width="1920" height="960" src="/userPanel/resources/images/slider/bg.jpeg" class="ls-l" alt="" style="top:-339px; left:-260px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; filter:blur(10px);" data-ls="showinfo:1; durationin:1500; easingin:easeOutQuint; rotateyin:-5; scalexin:.8; scaleyin:.8; filterin:blur(30px); loop:true; loopduration:5000; loopstartat:allinend + 0; loopeasing:easeInOutSine; loopscalex:.8; loopscaley:.8; loopcount:1; loopfilter:blur(0px);">
                    <div style="top:0px; left:0px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; height:520px; width:50%; font-size:13px; opacity:.5;" class="ls-l bg-secondary" data-ls="showinfo:1; delayin:500; fadein:false; heightin:0; offsetxout:left; easingout:easeInQuint; skewxout:10;"></div>
                    <div style="top:170px; left:100px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; font-family:Verdana; font-size:40px; height:2px; background:#fff; width:250px; opacity:.75; border-radius:3px;" class="ls-l" data-ls="showinfo:1; durationin:1500; delayin:1000; fadein:false; clipin:0 50% 0 50%; offsetxout:left;"></div>
                    <p style="top:140px; left:100px; text-align:initial; font-weight:400; font-style:normal; text-decoration:none; mix-blend-mode:normal; font-family:'Comfortaa', cursive; font-size:30px; color:#fff;" class="ls-l" data-ls="showinfo:1; offsetyin:top; delayin:1000; easingin:easeOutQuint; offsetxout:left; texttransitionin:true; texttypein:chars-desc; textshiftin:20; textoffsetyin:-70lh; textdurationin:800; texteasingin:easeOutQuint; textfadein:false; textstartatin:transitioninstart + 0;">Make Your Vehicle Last Long</p>
                    <p style="top:190px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:20px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2000; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;"><i class="fas fa-map-marker-alt text-primary"></i> SEARCH,SEE,LOVE.</p><br>
                    <p style="top:240px; left:100px; text-align:initial; text-decoration:none; mix-blend-mode:normal; font-size:20px; color:#fff; padding-right:20px;" class="ls-l" data-ls="showinfo:1; offsetxin:-100lw; durationin:1500; delayin:2000; transformoriginin:0% 50% 0; clipin:0 0 0 100%; offsetxout:left;"> <i class="fas fa-map-marker-alt text-primary"></i>Find best garage that fits your needs.</p><br><br>
                     
                     
               </div>
               </div>
               </div>
                
            
           <div class="full-row">
			<div class="container">

				<div class="row">

					<div class="col-lg-4">
						<div class="sidebar-widget">
							<h4
								class="double-down-line-left text-secondary position-relative pb-4 mb-4">Advance
								Search</h4>
							<form:form method="post" modelAttribute="garageFilter"
								action="">
								<div class="row">
									
									
									<div class="col-md-12">
										<div class="form-group">
											<span class ="text-primary">Minimum charges</span> <br>
											<form:checkbox path="minChargesFilter" value="Below 100"
												class="filters" />
											&nbsp;Below 100 &nbsp; &nbsp;
											<form:checkbox path="minChargesFilter" value="100-300"
												class="filters" />
											&nbsp;Between 100-300 &nbsp; <br>
											<form:checkbox path="minChargesFilter" value="Above 300"
												class="filters" />
											&nbsp;Above 300

										</div>
									</div>
									
									
									<div class="col-md-12">
										<div class="form-group">
											<span class ="text-primary">City</span> <br>
											<form:select class="form-control bg-gray" path="cityId" name="cityId">
												<option value=0 label="Select City" />
												<c:forEach var="c" items="${cityList}">
													<form:option value="${c.cityId}" label="${c.cityName}" />
												</c:forEach>
											</form:select>
										</div>
									</div>
									
									<div class="col-md-12">
										<div class="form-group">
											<span class ="text-primary">Area</span> <br>
											<form:select class="form-control bg-gray" path="areaId" name="areaId">
												<option value=0 label="Select Area" />
												<c:forEach var="a" items="${areaList}">
													<form:option value="${a.areaId}" label="${a.areaName}"/>
												</c:forEach>
											</form:select>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group mt-4">
											<input type="submit" class="btn btn-primary" style="width:49%;" value="Search Garage">
											<input type="reset" class="btn btn-primary" style="width:49%;" value="Reset">
											
										</div>
									</div>
								</div>
							</form:form>
						</div>

						<div class="sidebar-widget mt-5">
							
						</div>
					</div>

					<div class="col-lg-8">
						<div class="row">
							<div class="col-lg-12">
								<div class="pb-4 mt-md-50"></div>
							</div>
						</div>
						<div class="row">
						<!--<c:forEach var="g" items="${garageList}">
						<a href="/userPanel/garage/viewGarage/${g.garageId}">
							<div class="col-md-6">
								<div class="featured-thumb hover-zoomer mb-4">
									<div class="overlay-black overflow-hidden position-relative">
										<img
											src="/userPanel/resources/images/garagePicture/${g.garagePicture}" height="300"
											alt="">
										<div class="sale bg-secondary text-white">${g.status}</div>
										<div class="price text-primary">
											Rs.${g.minCharges}
										</div>
										
									</div>
									<div class="featured-thumb-data shadow-one">
										<div class="p-4">
											<h5 class="text-secondary hover-text-primary mb-2">
												<a href="#">${g.garageName}</a>
											</h5>
											<span class="location"></span>
										</div>
										
									</div>
								</div>
								
							</div>
							</a>
							</c:forEach> -->
							
						<a href="">
							<div class="col-md-6">
								<div class="featured-thumb hover-zoomer mb-4">
									<div class="overlay-black overflow-hidden position-relative">
										<img
											src="/userPanel/resources/images/garagePicture/g1.jpeg" height="300"
											alt="">
										<div class="sale bg-secondary text-white">Open</div>
										<div class="price text-primary">
											Rs.100
										</div>
										
									</div>
									<div class="featured-thumb-data shadow-one">
										<div class="p-4">
											<h5 class="text-secondary hover-text-primary mb-2">
												<a href="#">Auto Care</a>
											</h5>
											<span class="location">Vasna</span>
										</div>
										
									</div>
								</div>
								
							</div>
							</a>
							
							<a href="">
							<div class="col-md-6">
								<div class="featured-thumb hover-zoomer mb-4">
									<div class="overlay-black overflow-hidden position-relative">
										<img
											src="/userPanel/resources/images/garagePicture/g2.jpeg" height="300"
											alt="">
										<div class="sale bg-secondary text-white">Open</div>
										<div class="price text-primary">
											Rs.300
										</div>
										
									</div>
									<div class="featured-thumb-data shadow-one">
										<div class="p-4">
											<h5 class="text-secondary hover-text-primary mb-2">
												<a href="#">Repair Shop</a>
											</h5>
											<span class="location">Paldi</span>
										</div>
										
									</div>
								</div>
								
							</div>
							</a>
							
							<a href="">
							<div class="col-md-6">
								<div class="featured-thumb hover-zoomer mb-4">
									<div class="overlay-black overflow-hidden position-relative">
										<img
											src="/userPanel/resources/images/garagePicture/g3.jpeg" height="300"
											alt="">
										<div class="sale bg-secondary text-white">Closed</div>
										<div class="price text-primary">
											Rs.200
										</div>
										
									</div>
									<div class="featured-thumb-data shadow-one">
										<div class="p-4">
											<h5 class="text-secondary hover-text-primary mb-2">
												<a href="#">Mechanic Hub</a>
											</h5>
											<span class="location">Navrangpura</span>
										</div>
										
									</div>
								</div>
								
							</div>
							</a>
							
							<a href="">
							<div class="col-md-6">
								<div class="featured-thumb hover-zoomer mb-4">
									<div class="overlay-black overflow-hidden position-relative">
										<img
											src="/userPanel/resources/images/garagePicture/g4.jpeg" height="300"
											alt="">
										<div class="sale bg-secondary text-white">Open</div>
										<div class="price text-primary">
											Rs.50
										</div>
										
									</div>
									<div class="featured-thumb-data shadow-one">
										<div class="p-4">
											<h5 class="text-secondary hover-text-primary mb-2">
												<a href="#">Perfect Gear</a>
											</h5>
											<span class="location">Ambavadi</span>
										</div>
										
									</div>
								</div>
								
							</div>
							</a>
							
							</div>
						</div>
					</div>
				</div>
			</div>
           
                        
         
         
         
                       <!--	Achievement
        ============================================================-->
        <!-- <div class="full-row overlay-secondary" style="background-image: url('images/counterbg.jpg'); background-size: cover; background-position: center center; background-repeat: no-repeat;">
            <div class="container">
                <div class="fact-counter">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="count wow text-center  mb-sm-50" data-wow-duration="300ms"> <i class="flaticon-house flat-large text-white" aria-hidden="true"></i>
                                <div class="count-num text-primary my-4" data-speed="3000" data-stop="1732">0</div>
                                <div class="text-white h5">Rental Properties</div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="count wow text-center  mb-sm-50" data-wow-duration="300ms"> <i class="flaticon-man flat-large text-white" aria-hidden="true"></i>
                                <div class="count-num text-primary my-4" data-speed="3000" data-stop="341">0</div>
                                <div class="text-white h5">Happy Landlords</div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="count wow text-center  mb-sm-50" data-wow-duration="300ms"> <i class="flaticon-invention flat-large text-white" aria-hidden="true"></i>
                                <div class="count-num text-primary my-4" data-speed="3000" data-stop="2350">0</div>
                                <div class="text-white h5">Happy Tenants</div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="count wow text-center mb-sm-50" data-wow-duration="300ms"> <i class="flaticon-investment flat-large text-white" aria-hidden="true"></i>
                                <div class="count-num text-primary my-4" data-speed="3000" data-stop="13780">0</div>
                                <div class="text-white h5">Cities in Gujarat</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         -->
        <!--	Text Block One
		======================================================-->
        <div class="full-row bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="text-secondary double-down-line text-center">What We Do</h2>
                        </div>
                </div>
                <div class="text-box-one">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-rent flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Engine Diagnosics</h5>
                                
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-for-rent flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Lube,Oils,Filtrs</h5>
                                
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-list flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Tire and wheels services</h5>
                                
                            </div>
                        </div>
                       
                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-diagram flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Regular servicing</h5>
                                
                            </div>
                        </div>
                        <!-- <div class="col-lg-3 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-real-estate flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0"><a href="service-details.html">E-Payment of Deposit </a></h5>
                                <p>Landlord can recieve deposit amount online.</p>
                            </div>
                        </div>
                         --><!-- <div class="col-lg-3 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-sketch flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0"><a href="service-details.html">Post Rental Services</a></h5>
                                <p>Tenant will be provided with the details of household help and other basic services. For example, plumber, electrician, maid,etc. </p>
                            </div>
                        </div>
 -->                        <div class="col-lg-4 col-md-6">
                            <div class="p-4 text-center hover-bg-white hover-shadow rounded mb-4"> <i class="flaticon-seller-1 flat-medium text-primary" aria-hidden="true"></i>
                                <h5 class="text-secondary hover-text-primary py-3 m-0">Repair Breaks</h5>
                                
                            </div>
                        </div>
                        
                        <div class="col-md-12 col-lg-12"> <a class="btn btn-primary mt-5 d-table mx-auto" href="services.html">More Services</a> </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        <!--	Massage Box Two
        ============================================================-->
        <div class="full-row overlay-secondary" style="background-image: url('/userPanel/resources/images/massagetwo.jpg'); background-position: center center; background-repeat: no-repeat;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="text-white text-center">We make auto repair more convenient for you</h3>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
	<%@include file="footer.jsp" %>
	
	<a href="#" class="bg-secondary text-white hover-text-secondary" id="scroll"><i class="fas fa-angle-up"></i></a>
<script type="text/javascript">
		$("#cityId")
				.change(
						function() {
							var cityId = $(this).val();

							$
									.ajax({
										type : 'GET',
										url : "/userPanel/area/getAreas/"
												+ cityId,
										success : function(data) {

											var slctSubcat = $('#areaId'), option = "";
											slctSubcat.empty();
											var select = "<option value='0'>  Select Area </option>";

											for (var i = 0; i < data.length; i++) {
												option = option
														+ "<option value='"+data[i].areaId + "'>"
														+ data[i].areaName
														+ "</option>";
											}
											slctSubcat.append(select);
											slctSubcat.append(option);
										},
										error : function() {
											alert("error");
										}
									});
						});
	</script>
<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	
	<%@include file="script.jsp" %>
</body>
</html>