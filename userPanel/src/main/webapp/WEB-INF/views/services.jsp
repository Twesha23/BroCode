%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="head.jsp" %>
</head>
<body>
<div id="page-wrapper">
    <div class="row"> 
	<%@include file="header.jsp" %>
	
	<!--	Page Loader 
	=============================================================-->  
	<div class="page-loader position-fixed z-index-9999 w-100 bg-white vh-100">
		<div class="d-flex justify-content-center y-middle position-relative">
		  	<div class="spinner-border" role="status">
				<span class="sr-only">Loading...</span>
		  	</div>
		</div>
	</div>

	<!--	Banner
		===============================================================-->
        <div class="bg-gray full-row py-5 page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Services</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/userPanel/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Services</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        
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
	
	<!-- Scroll to top --> 
        <a href="#" class="bg-secondary text-white hover-text-secondary" id="scroll"><i class="fas fa-angle-up"></i></a> 
        <!-- End Scroll To top --> 
	<%@include file="script.jsp" %>
</body>
</html>