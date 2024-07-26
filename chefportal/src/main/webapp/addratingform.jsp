<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>

<jsp:include page="header.jsp" />
<style>

.star {
  font-size: 10vh;
  cursor: pointer;
}
 
.one {
  color: rgb(255, 0, 0);
}
 
.two {
  color: rgb(255, 106, 0);
}
 
.three {
  color: rgb(251, 255, 120);
}
 
.four {
  color: rgb(255, 255, 0);
}
 
.five {
  color: rgb(24, 159, 14);
}
</style>
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Customer Dashboard</h3>
          <p>Customer Dashboard</p>
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
                      <%

                        String orderid = request.getParameter("id");
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
					
						ResultSet rs = st.executeQuery("select booking.*,chef.name as chefname,chef.profilephoto as profilephoto,foodservices.service_name as foodservice,food_types.name as foodmenu from booking,chef,foodservices,food_types where food_types.id=booking.foodtypeid AND foodservices.id=booking.foodserviceid AND chef.id=booking.chef_id AND booking.id='"+orderid+"'");
					
					    rs.next();
						%>
						
						 <div class="col-xl-4 col-md-6">
	                    <div class="single_order">
	                        <div class="order_thumb">
	                            <img src="<%=request.getContextPath()%>/chefimage/<%=rs.getString("profilephoto")%>" alt="" width="350" height="270">
	                            
	                        </div>
	                        <div class="order_info">
	                            <h3><a href="#"><%=rs.getString("chefname")%></a></h3>
	                            
	                            
	                           
	                           
	                           
	                        </div>
	                    </div>
	                </div>
	                 <form action="ratingsubmit.jsp" method="post">
	                             
	                             <span onclick="gfg(1)"
							              class="star">&#9733;
							        </span>
							        <span onclick="gfg(2)"
							              class="star">&#9733;
							        </span>
							        <span onclick="gfg(3)"
							              class="star">&#9733;
							        </span>
							        <span onclick="gfg(4)"
							              class="star">&#9733;
							        </span>
							        <span onclick="gfg(5)"
							              class="star">&#9733;
							        </span>
							        <h3 id="output">
							              Rating is: 0/5
							          </h3>
							       <input type="hidden" name="chef_id" value="<%=rs.getInt("chef_id")%>"/>   
							       <input type="hidden" name="cust_id" value="<%=rs.getInt("customer_id")%>"/>
							       <input type="hidden" name="rating" value="1" id="rating"/>
							       <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="rating_msg" id="rating_msg" type="text"   placeholder="Enter your feedback" required>
                                    </div>
                                </div>   
							      <div class="form-group mt-3">
                                        <button type="submit" class="button button-contactForm boxed-btn">Give Ratings</button>
                                 </div>
								                             
	                             </form>
                        
                    </div>
                    
                </div>
            </div>
        </section>
    <!-- ================ contact section end ================= -->
        
   <jsp:include page="footer.jsp" />
   
   <script>
   
   let stars = 
	    document.getElementsByClassName("star");
	let output = 
	    document.getElementById("output");
	 
	// Funtion to update rating
	function gfg(n) {
	    remove();
	    for (let i = 0; i < n; i++) {
	        if (n == 1) cls = "one";
	        else if (n == 2) cls = "two";
	        else if (n == 3) cls = "three";
	        else if (n == 4) cls = "four";
	        else if (n == 5) cls = "five";
	        stars[i].className = "star " + cls;
	    }
	    output.innerText = "Rating is: " + n + "/5";
	    
	    document.getElementById("rating").value=n;
	}
	 
	// To remove the pre-applied styling
	function remove() {
	    let i = 0;
	    while (i < 5) {
	        stars[i].className = "star";
	        i++;
	    }
	}
   
   
   </script>