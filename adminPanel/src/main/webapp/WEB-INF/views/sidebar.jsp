<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.brocode.model.Admin"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% if(session.getAttribute("admin")==null)
	response.sendRedirect("error");%> 
<div class="sidebar" data-active-color="rose" data-background-color="black" data-image="/adminPanel/resources/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/sidebar-1.jpg">
    <div class="logo">

        <a  class="simple-text logo-normal">
			&ensp; Garage In Your Pocket
        </a>
    </div>
     <% Admin admin = (Admin)session.getAttribute("admin"); %> 
    <div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                <img src="/adminPanel/resources/sample-profile-picture.png"/>
                <!-- <img src="/adminPanel/resources/images/profilePicture/${admin}"/> -->
                
            </div>
            <div class="info">
                 <a>
                    <span>
                     	
                         <% out.println(admin.getFname()); %>  
                         <% out.print(admin.getLname()); %>
                          <b class="caret"></b>
                    </span>
                </a>
                <div class="clearfix"></div>
                <div>
                    <ul class="nav">
                       
                        <li>
                            <a href="/adminPanel/admin/editAdmin/${admin.adminId}">
                                <span class="sidebar-mini"> </span>
                                <span class="sidebar-normal"> Edit Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/adminPanel/admin/adminRegistrationPage">
                                <span class="sidebar-mini">  </span>
                                <span class="sidebar-normal"> Add Admin </span>
                            </a>
                        </li>
                        <li>
                            <a href="/adminPanel/admin/changePassword">
                                <span class="sidebar-mini">  </span>
                                <span class="sidebar-normal"> Change Password </span>
                            </a>
                        </li>
                        <li>
                            <a href="/adminPanel/admin/adminList">
                                <span class="sidebar-mini"> </span>
                                <span class="sidebar-normal"> Admin List </span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="/adminPanel/admin/login">
                                <span class="sidebar-mini">  </span>
                                <span class="sidebar-normal"> Logout </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <ul class="nav">

            <li>
                <a href="/adminPanel/user/userList">
                    <i class="material-icons">settings_applications</i>
                    <p>Manage Users</p>
                </a>
                </li>

            <li>
                <a>
                    <i class="material-icons">location_on</i>
                    <p> Manage Location 
                       <b class="caret"></b>
                    </p>
                </a>

                <div>
                    <ul class="nav">
                        <li>
                            <a href="/adminPanel/area/areaList">
                                <span class="sidebar-mini"> </span>
                                <span class="sidebar-normal">Manage Areas </span>
                            </a>
                        </li>
                        <li>
                            <a href="/adminPanel/city/cityList">
                                <span class="sidebar-mini">  </span>
                                <span class="sidebar-normal">Manage Cities </span>
                            </a>
                        </li>
                        <li>
                            <a href="/adminPanel/state/stateList">
                                <span class="sidebar-mini"> </span>
                                <span class="sidebar-normal">Manage States </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>

            <!-- <!-- <li>
                <a data-toggle="collapse" href="#formsExamples">
                    <i class="material-icons">burst_mode</i>
                    <p> Manage Pages 
                       <b class="caret"></b>
                    </p>
                </a>

                <div class="collapse" id="formsExamples">
                    <ul class="nav">
                        <li>
                            <a href="/adminPanel/pages/others/aboutus.jsp">
                                <span class="sidebar-mini"> A </span>
                                <span class="sidebar-normal"> About Us </span>
                            </a>
                        </li>
                        <li>
                            <a href="/adminPanel/pages/others/contactus.jsp">
                                <span class="sidebar-mini"> C </span>
                                <span class="sidebar-normal"> Contact Us </span>
                            </a>
                        </li>
                        <li>
 -->                   <!--          <a href="/adminPanel/faq.jsp">
                                <span class="sidebar-mini"> F </span>
                                <span class="sidebar-normal"> FAQ </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li> -->
 
            <li>
                <a data-toggle="collapse" href="#tablesExamples">
                    <i class="material-icons">settings</i>
                    <p> Manage Garage
                       <b class="caret"></b>
                    </p>
                </a>

                <div class="collapse" id="tablesExamples">
                    <ul class="nav">
                        <li>
                            <a href="/adminPanel/garage/List">
                                <span class="sidebar-mini"> G </span>
                                <span class="sidebar-normal"> Listed Garages </span>
                            </a>
                        </li>
                        
                        
                    </ul>
                </div>
            </li>

            <li>
                <a href="/adminPanel/review/reviewList">
                    <i class="material-icons">sms</i>
                    <p> Feedbacks </p>
                </a>
            </li>
            
            
           <!--  <li>
                <a href="/adminPanel/pages/others/payment.jsp">
                    <i class="material-icons">money</i>
                    <p> Payments </p>
                </a>
            </li>
            
			<li>
                <a href="/adminPanel/pages/others/socialmedia.jsp">
                    <i class="material-icons">share</i>
                    <p> Social Media Accounts </p>
                </a>
            </li>
             
            <li>
                <a href="/adminPanel/admin/home">
                    <i class="material-icons">apps</i>
                    <p> Generate Report </p>
                </a>
            </li>-->
            
        </ul>
    </div>
</div>
<%@include file = "corejsfiles.jsp" %>
</body>
</html>