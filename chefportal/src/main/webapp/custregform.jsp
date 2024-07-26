
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Customer Sign Up</h3>
          <p>"Join the Eatery Elevate community! Register now to unlock a world of gourmet dining experiences.
          <br> Connect with top chefs, customize your meals, and transform everyday dining into a culinary adventure."</p>
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Customer Sign Up</h2>
                    </div>
                    <div class="col-lg-8">
                        <form class="form-contact contact_form" action="custregsubmit.jsp" method="post" id="" >
                            <div class="row">
                               <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="name" id="email" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Name'" placeholder="Enter your Name" required>
                                    </div>
                                </div>
                               
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
                                 <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="contactno" id="contactno" maxlength="10" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, ''); this.value = this.value.replace(/(\..*)\./g, '$1');" maxlength="10"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your mobile no'" placeholder="Enter your mobiel no" required>
                                    </div>
                                </div>
                                
                                 <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="address" id="address" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your address'" placeholder="Enter your address" required>
                                    </div>
                                </div>
                                
                                
                              
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="button button-contactForm boxed-btn">Sign Up</button>
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

