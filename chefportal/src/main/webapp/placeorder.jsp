
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Place Order</h3>
          <p>"Ready to indulge in gourmet excellence?<br> Place your order with Eatery Elevate and let our top chefs transform your dining experience into something extraordinary."</p>
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->
 
                 <%
                        String chefid = request.getParameter("chefid");

						
						Connection con=DbConnection.getConnection();
						
						
					    Statement st2 = con.createStatement();
						ResultSet rs2 = st2.executeQuery("select * from chef where id='"+chefid+"'");
						rs2.next();
						
						Statement st1 = con.createStatement();
						ResultSet rs1 = st1.executeQuery("select * from foodservices");
						
						%>

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Order Details</h2>
                    </div>
                    <div class="col-lg-8">
                        <form class="form-contact contact_form" action="ordersubmit.jsp?chefid=<%=chefid %>" method="post" id=""  novalidate="novalidate">
                            <div class="row">
                              <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Service Required</label>
                                        <select class="form-control valid" name="service_name" id="service_name" required>
                                        
                                       
                                        <%
						                while(rs1.next())
						                {
						        	   
						                %>
						                  <option value="<%=rs1.getInt("id")%>"><%=rs1.getString("service_name")%></option>
						                <% 
						                }
                                        rs1.close();
                                        st1.close();
						                %>
						                 </select>
                                    </div>
                               </div>
                              
                                 <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Food Menu type</label>
                                        <select class="form-control valid" name="food_types" id="food_types"  required>
                                     
                                       
                                        <%
                                        Statement st = con.createStatement();
                						ResultSet rs = st.executeQuery("select * from food_types");
						                while(rs.next())
						                {
						        	   
						                %>
						                  <option value="<%=rs.getInt("id")%>" <% if(rs.getInt("id") == Integer.parseInt(rs2.getString("speciality"))){ %> selected <% } %>><%=rs.getString("name")%></option>
						                <% 
						                }
						                rs.close();
						                st.close();
						                %>
						                
						                 </select>
                                    </div>
                                </div> 
                                <%
                            
                                 %>
                                  <div class="col-sm-12">
                                    <div class="form-group">
                                      <label>Chef as You Select</label>
                                        <input type="hidden" name="chefid" value="<%=rs2.getInt("id")%>"/>
                                        <input class="form-control valid" name="chefname" id="chefname" type="text" value="<%=rs2.getString("name")%>" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter No of Guest'" placeholder="Enter No of Guest" required>
                                    </div>
                                  </div>
                               
                                
                               <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>No Of Guest</label>
                                        <input class="form-control valid" name="noofguest" id="nofoguest" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter No of Guest'" placeholder="Enter No of Guest" required>
                                    </div>
                                </div>
                               
                                <div class="col-sm-12">
                                   <h5 class="mb-30">Ingredient</h3>
									<div class="switch-wrap d-flex justify-content-between">
										
										<div>
											<input type="radio"  name="ingredient" value="By Self">
											<label for="default-radio">By Self</label>
										</div>
										
										<div >
											<input type="radio"  name="ingredient" value="By Chef" checked>
											<label for="default-radio">By Chef</label>
										</div>
									</div>
                                </div>
                                
                                  <div class="col-sm-12">
                                   <h5 class="mb-30">Food Preparation</h3>
									<div class="switch-wrap d-flex justify-content-between">
										
										<div>
											<input type="radio"  name="preparation" value="At Your Place">
											<label for="default-radio">At Your Place</label>
										</div>
										
										<div >
											<input type="radio"  name="preparation" value="At Chef Place and Delivered at Event" checked>
											<label for="default-radio">At Chef Place and Delivered at Event</label>
										</div>
									</div>
                                </div>
                                <!-- 
                                  <div class="col-sm-12">
                                   <h5 class="mb-30">Extra Worker or Helper Required</h3>
									<div class="switch-wrap d-flex justify-content-between">
										
										<div>
											<input type="radio"  name="workers" value="Yes">
											<label for="default-radio">Yes</label>
										</div>
										
										<div >
											<input type="radio"  name="workers" value="No" checked>
											<label for="default-radio">No</label>
										</div>
									</div>
                                </div>
                                
                                <div class="col-sm-12">
                                    <div class="form-group">
                                      <label>No of Extra  Worker</label>
                                        <input class="form-control valid" name="nofoworker" value="0" id="nofoworker" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter no of extra workers'" placeholder="Enter no of extra workers" required>
                                    </div>
                                </div>
                               
                                 -->
                                 <div class="col-sm-12">
    <h5 class="mb-30">Extra Worker or Helper Required</h5>
    <div class="switch-wrap d-flex justify-content-between">
        <div>
            <input type="radio" name="workers" value="Yes" id="workers-yes" onclick="toggleWorkerInput(true)">
            <label for="workers-yes">Yes</label>
        </div>
        <div>
            <input type="radio" name="workers" value="No" id="workers-no" onclick="toggleWorkerInput(false)" checked>
            <label for="workers-no">No</label>
        </div>
    </div>
</div>

<div class="col-sm-12" id="extra-worker-input" style="display: none;">
    <div class="form-group">
        <label>No of Extra Worker</label>
        <input class="form-control valid" name="nofoworker" value="0" id="nofoworker" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter no of extra workers'" placeholder="Enter no of extra workers" required>
    </div>
</div>

<script>
    function toggleWorkerInput(show) {
        const workerInput = document.getElementById('extra-worker-input');
        if (show) {
            workerInput.style.display = 'block';
        } else {
            workerInput.style.display = 'none';
        }
    }
</script>
                                 
                                 <div class="col-sm-12">
                                    <div class="form-group">
                                      <label>Chef Charges Per Day</label>
                                        <input class="form-control valid" name="charges" value="<%=rs2.getString("charges") %>" id="charges" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your per day chargers'" placeholder="Enter your per day charges" readonly>
                                    </div>
                                </div>
                                
                                 <div class="col-sm-12">
                                    <div class="form-group">
                                      <label>No Of Days that Chef Required</label>
                                        <input class="form-control valid" name="noofdays" id="noofdays" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Exprerience'" placeholder="Enter No of Days" required>
                                    </div>
                                </div>
                                
                                <div class="col-sm-12">
                                    <div class="form-group">
                                      <label>Event Date Time</label>
                                        <input class="form-control valid" name="eventdate" id="eventdate" type="datetime-local" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your mobile no'" placeholder="Enter your mobiel no" required>
                                    </div>
                                </div>
                                
                                
                                 <div class="col-sm-12">
                                    <div class="form-group">
                                      <label>Total Bill Amount</label>
                                        <input class="form-control valid" name="totalamt" id="totalamt" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Total Amount'" placeholder="Total Amount" readonly>
                                    </div>
                                </div>
                                
                                 <div class="col-sm-12">
                                   <h5 class="mb-30">Payment</h3>
									<div class="switch-wrap d-flex justify-content-between">
										
										<div>
											<input type="radio"  name="payment" value="Online">
											<label for="default-radio">Online</label>
										</div>
										
										<div >
											<input type="radio"  name="payment" value="Cash" checked>
											<label for="default-radio">Cash</label>
										</div>
									</div>
                                </div>
                                
                               
                                
                              
                                
                                
                                
                              
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="button button-contactForm boxed-btn">Place Order</button>
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
   <script>
           $(document).ready(function(){
        	   $("#noofdays").keyup(function(){
        		   var  charges=$("#charges").val();
        		   var  noofday=$("#noofdays").val();
        		  var total=charges*noofday;
        		  $("#totalamt").val(total);
        	   });
           });
   </script>