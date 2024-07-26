
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Chef Sign Up</h3>
          <p>"Get ready to showcase your skills! Complete your chef profile, manage your availability, 
          <br>and start delighting diners with your culinary creations."</p>
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->
 
   <%

						
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from food_types");
						
						%>

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Chef Sign Up</h2>
                    </div>
                    <div class="col-lg-8">
                        <form class="form-contact contact_form" action="chefregsubmit.jsp" method="post" id="" enctype="multipart/form-data" novalidate="novalidate">
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
                                        <input class="form-control valid" name="contactno" id="contactno" type="text"  oninput="this.value = this.value.replace(/[^0-9.]/g, ''); this.value = this.value.replace(/(\..*)\./g, '$1');" maxlength="10"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your mobile no'" placeholder="Enter your mobiel no" required>
                                    </div>
                                </div>
                                
                                 <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="experience" id="experience" type="number" min="0" max="60" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Exprerience'" placeholder="Enter your Experience" required>
                                    </div>
                                </div>
                                
                                 <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="charges" id="charges" type="text"  oninput="this.value = this.value.replace(/[^0-9.]/g, ''); this.value = this.value.replace(/(\..*)\./g, '$1');" maxlength="4" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your per day chargers'" placeholder="Enter your per day charges" required>
                                    </div>
                                </div>
                                
                                 <div class="col-sm-12">
                                    <div class="form-group">
                                      
                                        <select class="form-control valid" name="speciality" id="speciality" required>
                                        
                                       
                                        <%
						                while(rs.next())
						                {
						        	   
						                %>
						                  <option value="<%=rs.getInt("id")%>"><%=rs.getString("name")%></option>
						                <% 
						                }
						                %>
						                 </select>
                                    </div>
                                </div>
                                
                                  <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="profilephoto" id="profilephoto" type="file" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your photo'" placeholder="Enter your photo" required>
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

