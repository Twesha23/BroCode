<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<nav class="navbar navbar-transparent navbar-absolute">
    <div class="container-fluid" style="margin-top: 20px">
        <div class="navbar-minimize">
            <button id="minimizeSidebar" class="btn btn-round btn-white btn-fill btn-just-icon">
                <i class="material-icons visible-on-sidebar-regular">more_vert</i>
                <i class="material-icons visible-on-sidebar-mini">view_list</i>
            </button>
        </div>
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" style="margin-top:20px">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/adminPanel/admin/home"> 
            	
            </a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    
                </li>
              <!--   <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="material-icons">person</i>
                        <p class="hidden-lg hidden-md">
                            Profile
                            <b class="caret"></b>
                        </p>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/adminPanel/pages/admin/viewprofile.jsp">My Profile</a></li>
                        <li><a href="/adminPanel/pages/admin/updateprofile.jsp">Edit Profile</a></li>
                        <li><a href="/adminPanel/pages/admin/changepassword.jsp">Change Password</a></li>
                        <li><a href="/adminPanel/pages/admin/registeradmin.jsp">Add Admin</a></li>
                        <li><a href="/adminPanel/login.jsp">Log Out</a></li>
                   </ul>
                </li>
 -->                

                <li class="separator hidden-lg hidden-md"></li>
            </ul>


           <!--  <form class="navbar-form navbar-right" role="search">
                <div class="form-group form-search is-empty">
                    <input type="text" class="form-control" placeholder=" Search ">
                    <span class="material-input"></span>
                </div>
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                    <i class="material-icons">search</i><div class="ripple-container"></div>
                </button>
            </form>
 -->        </div>
    </div>
</nav>
</body>
</html>