<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Chef Dashboard</h3>
          <p>Your culinary canvas awaits! Dive into creativity, manage menus, and dish out excellence with every click. <br>Welcome to your kitchen kingdom."</p>
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Chef Dashboard</h2>
                    </div>
                    <div class="col-lg-3">
                       <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>Welcome <%=session.getAttribute("chefname") %></h3>
                                <p></p>
                               <ul>
                               
                                  
                                    <li><a href="cheforders.jsp" class="genric-btn primary-border circle arrow">My Orders</a> </li><br/>
                                    <li><a href="logout.jsp" class="genric-btn primary-border circle arrow">Logout</a> </li><br/>
                                </ul>
                            </div>
                        </div> 
                        
                        
                    </div>
                    <div class="col-lg-8">
                      
                        
                    </div>
                    
                </div>
            </div>
        </section>
    <!-- ================ contact section end ================= -->
        
   <jsp:include page="footer.jsp" />
