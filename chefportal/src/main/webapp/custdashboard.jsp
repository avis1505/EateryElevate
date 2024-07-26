<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Customer Dashboard</h3>
          <p>"Your culinary command center awaits! Manage your gourmet journey effortlessly with our customer dashboard <br> where every click brings you closer to culinary perfection."</p>
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Customer Dashboard</h2>
                    </div>
                    <div class="col-lg-3">
                       <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>Welcome <%=session.getAttribute("custname") %></h3>
                                <p></p>
                               <ul>
                               
                                  
                                    <li><a href="custorders.jsp" class="genric-btn success-border circle arrow">My Orders</a> </li><br>
                                    <li><a href="logout.jsp" class="genric-btn success-border circle arrow">Logout</a> </li>
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