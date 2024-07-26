
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Customer Sign In</h3>
          <p>"Welcome back to Eatery Elevate! Sign in to access your personalized culinary journey. Manage bookings, explore exclusive menus,
          <br> and elevate your dining experiences with every visit."</p>
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Customer Sign In</h2>
                    </div>
                    <div class="col-lg-8">
                        <form class="form-contact contact_form" action="custloginsubmit.jsp" method="post" id="" novalidate="novalidate">
                            <div class="row">
                              
                               
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your email'" placeholder="Enter your email" required>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="password" id="password" type="password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter password '" placeholder="Password" required>
                                    </div>
                                </div>
                               
                                
                                 
                              
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="button button-contactForm boxed-btn">Sign In</button>
                            </div>
                             <div class="form-group mt-3">
                                <a href="custregform.jsp" class="link text-danger">Not yet account? Join Now</a>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        
                        
                        
                    </div>
                </div>
            </div>
        </section>
    <!-- ================ contact section end ================= -->
        
   <jsp:include page="footer.jsp" />

