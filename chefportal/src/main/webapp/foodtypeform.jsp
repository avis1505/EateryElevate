
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Admin Dashboard</h3>
          <p>Food Type (Cuisine)</p>
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Food Cuisine</h2>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                       <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>Welcome Admin</h3>
                                <p></p>
                               <jsp:include page="adminsidebar.jsp" />
                            </div>
                        </div> 
                        
                        
                    </div>
                    <div class="col-lg-8">
                         <h3>Add  New Food Cuisine</h3>
                         <form class="form-contact contact_form" action="foodtypesubmit.jsp" method="post" id="" novalidate="novalidate" enctype="multipart/form-data">
                            <div class="row">
                               
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Cuisine name'" placeholder="Enter Cuisine name" required>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="details" id="details" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Cuisine details '" placeholder="Cuisine Details" required>
                                    </div>
                                </div>
                                 <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="foodphoto" id="details" type="file" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Cuisine details '" placeholder="Cuisine Details" required>
                                    </div>
                                </div>
                              
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="button button-contactForm boxed-btn">Save</button>
                            </div>
                        </form>
                    </div>
                    
                </div>
            </div>
        </section>
    <!-- ================ contact section end ================= -->
        
   <jsp:include page="footer.jsp" />

