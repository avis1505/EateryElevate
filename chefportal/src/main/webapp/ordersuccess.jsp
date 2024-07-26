
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Order Success</h3>
          <p>"Success! Your taste buds are in for a treat! 
          <br>Sit back, relax, and get ready to savor the deliciousness brought to you by Eatery Elevate."</p>
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Order Success</h2>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                       <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                               
                              
                            </div>
                        </div> 
                        
                        
                    </div>
                    <div class="col-lg-8">
                       <h2 class="contact-title text-center">Your Order Placed Successfully</h2>
                       <p class="text-center">Thank you for order with us</p>
                       <% String msg= request.getParameter("msg"); %>
                       <p class="text-center" style="color:red;"><%=msg %></p>
                        
                    </div>
                    
                </div>
            </div>
        </section>
    <!-- ================ contact section end ================= -->
        
   <jsp:include page="footer.jsp" />
