<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">About Us</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                               
                                <li class="breadcrumb-item active" aria-current="page">About</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        
        <!--	About Our Company
		=================================================================-->
        <div class="full-row">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <h3 class="double-down-line-left text-secondary position-relative pb-4 mb-4">About Our Company</h3>
                    </div>
                </div>
                <div class="row about-company">
                    <div class="col-md-12 col-lg-7">
                        <div class="about-content">
                            <p>This application is to avail all the garage related facilities at ease. The system will provide functionalities like pickup and drop facility for all types of service, scheduling a slot for your vehicle’s regular service and an emergency service. 
In regular service, facilities of regularly servicing your vehicle, dent fixing, color fixing, oil replacement, etc. will be provided as per customer's needs.
In an emergency service, in-case your vehicle breakdowns anywhere due to any reason, the customer will be able to search the nearby garage , select any specific service requirement he wants and send request for the pickup, which in return if accepted by the garage owner, the customer will be notified about the same.
According to the service selected by the user, they will be notified about the estimated time for the service and dropping of their vehicle.
User has to make online payments for the services rendered using PayPal method.
Detailed bill regarding the services rendered will be mailed to the user once he has made the payment.
Reviews and ratings of each garage registered will be provided to the customer so that they can select the garage according to their convenience and also their review for the same.</p>
                            <img src="resources/images/about/02.png" alt=""> </div>
                        </div>
                    <div class="col-md-12 col-lg-5">
                        <div class="about-img"> <img src="/userPanel/resources/images/about/01.png" alt=""> </div>
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