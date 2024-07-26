<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Online Chef Service</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" type="image/x-icon" href="img/logo.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/themify-icons.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/nice-select.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/flaticon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/slicknav.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <!-- <link rel="stylesheet" href="<%=request.getContextPath()%>/css/responsive.css"> -->
</head>

<body>
   
    <!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-10 col-lg-10">
                            <div class="main-menu d-none d-lg-block">
                                <nav>
                                    <ul class="mein_menu_list" id="navigation">
                                       
                                       
                                        <div class="logo-img d-none d-lg-block">
                                                <a href="index.jsp">
                                                    <img src="img/logo.png" alt="">
                                                </a>
                                            </div>
                                        <li><a href="index.jsp">Home</a></li>
                                        <li><a href="about.jsp">About</a></li>
                                       
                                        <li><a href="foodmenu.jsp">menu</a></li>
                                         <li><a href="subplan.jsp">Subscription</a></li>
                                        <% if(session.getAttribute("adminid")!=null){ %>
                                        <li><a href="#">My Account <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="admindashboard.jsp">Dashboard</a></li>
                                                 <li><a href="logout.jsp">Logout</a></li>
                                            </ul>
                                        </li>
                                       
                                         <% } else{
                                        	 
                                         %>
                                          <li><a href="adminlogin.jsp">Admin Login</a></li>
                                         <% }
                                            %>
                                            <% if(session.getAttribute("custid")!=null){ %>
                                       <li><a href="#">My Account <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="custdashboard.jsp">Dashboard</a></li>
                                                 <li><a href="logout.jsp">Logout</a></li>
                                            </ul>
                                        </li>
                                         <% } else{
                                        	 
                                         %>
                                           <li><a href="custloginform.jsp">Customer Login</a></li>
                                         <% }
                                            %>
                                            
                                            <% if(session.getAttribute("chefid")!=null){ %>
	                                         <li><a href="#">My Account <i class="ti-angle-down"></i></a>
	                                            <ul class="submenu">
	                                                <li><a href="chefdashboard.jsp">Dashboard</a></li>
	                                                 <li><a href="logout.jsp">Logout</a></li>
	                                            </ul>
	                                        </li>
                                         <% } else{
                                        	 
                                         %>
                                          <li><a href="chefloginform.jsp">Chef Login</a></li>
                                         <% }
                                            %>
                                        
                                       
                                       
                                        <li><a href="contact.jsp">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 d-none d-lg-block">
                        <!--     <div class="custom_order">
                                <a href="#" class="boxed_btn_white">Custom Order</a>
                            </div> -->
                        </div> 
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                        <div class="logo-img-small d-sm-block d-md-block d-lg-none">
                                <a href="index.html">
                                    <img src="img/logo.png" alt="">
                                </a>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->
