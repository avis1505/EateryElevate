<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
   <jsp:include page="header.jsp" />
<!-- slider_area-start -->
    <div class="slider_area zigzag_bg_2">
        <div class="slider_sctive owl-carousel">
            <div class="single_slider slider_img_1">
                <div class="single_slider-iner">
                    <div class="slider_contant text-center">
                        <h3>Book Your Chef Online.</h3>
                            <p></p>
                    </div>
                </div>
            </div>
            <div class="single_slider slider_img_1">
                <div class="single_slider-iner">
                    <div class="slider_contant text-center">
                        <h3>Multi Cuisine</h3>
                            <p></p>
                    </div>
                </div>
            </div>
            <div class="single_slider slider_img_1">
                <div class="single_slider-iner">
                    <div class="slider_contant text-center">
                        <h3>Available for Home Cooking<br>
                            </h3>
                            <p></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider_area-end -->

    <!-- service_area-start -->
    <div class="service_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section_title mb-60">
                        <h3>Our Services</h3>
                        <p>"Celebrate culinary excellence with Eatery Elevate! Explore our services page to discover bespoke chef experiences, personalized menus, and unforgettable dining adventures. Elevate every meal with our curated selection of gourmet offerings."</p>
                    </div>
                </div>
            </div>
            <div class="row">
            
              <%
                Connection con=DbConnection.getConnection();
                Statement st1 = con.createStatement();
				ResultSet rs1 = st1.executeQuery("select * from foodservices");
              
              %>
              <%
                 while(rs1.next())
					{
						        	   
				%>
                <div class="col-xl-4 col-md-6">
                    <div class="single_service">
                        <div class="service_icon">
                            <i class="flaticon-gift"></i>
                        </div>
                        <h4><%=rs1.getString("service_name")%></h4>
                        <p><%=rs1.getString("details")%>.</p>
                         <a href="ratinglist.jsp?id=<%=rs1.getInt("id")%>" class="boxed_btn">Feedback</a>
                    </div>
                </div>
                <% }
              rs1.close();
              %>
                
               <!--  <div class="col-xl-4 col-md-6">
                    <div class="single_service">
                        <div class="service_icon">
                            <i class="flaticon-cake"></i>
                        </div>
                        <h4>Wedding Service</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="single_service">
                        <div class="service_icon">
                            <i class="flaticon-dance"></i>
                        </div>
                        <h4>Party Catering</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="single_service">
                        <div class="service_icon">
                            <i class="flaticon-calendar"></i>
                        </div>
                        <h4>Event Catering</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="single_service">
                        <div class="service_icon">
                            <i class="flaticon-businessman"></i>
                        </div>
                        <h4>Corporate Service</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="single_service">
                        <div class="service_icon">
                            <i class="flaticon-running-man"></i>
                        </div>
                        <h4>Catering On Demand</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>-->
            </div>
        </div>
    </div>
    <!-- service_area-end -->

    <!-- order_area_start -->
    <div class="order_area">
        <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="section_title mb-70">
                            <h3>Popular Orders</h3>
                            <p>"Discover our crowd-pleasers! These popular orders are a testament to our chefs' culinary brilliance,loved by diners everywhere. Indulge in the favorites that keep our guests coming back for more."</p>
                        </div>
                    </div>
                </div>
            <div class="row">
            
                      <%

						
						
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from food_types");
						
						%>
						 <%
						           while(rs.next())
						           {
						        	   
						        %>
						         
                <div class="col-xl-4 col-md-6">
                    <div class="single_order">
                        <div class="order_thumb">
                            <img src="<%=request.getContextPath()%>/foodmenu/<%=rs.getString("foodphoto")%>" alt="" width="350" height="270">
                            <!-- <div class="order_prise">
                                <span>10.00</span>
                            </div> -->
                        </div>
                        <div class="order_info">
                            <h3><a href="#"><%=rs.getString("name")%></a></h3>
                            <p><%=rs.getString("details")%>
                            </p>
                            <a href="selectchef.jsp?id=<%=rs.getInt("id")%>" class="boxed_btn">Order Now!</a>
                        </div>
                    </div>
                </div>
                <% 
		            } 
		         %>
              
               
                
            </div>
        </div>
    </div>
    <!-- order_area_end -->

    <!-- testmonial_area_start -->
    <div class="testmonial_area banner-3">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section_title white mb-60">
                        <h3>Feedback from Customers</h3>
                        <p>"Your feedback fuels our culinary journey! Explore what our customers have to say about their gourmet experiences with Eatery Elevate. Join the conversation and share your thoughts to help us continue elevating dining to new heights."</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="testmonial_active owl-carousel">
                        <div class="single_testmonial d-flex">
                            <div class="testmonial_thumb">
                                <img src="img/testmonial/1.png" alt="">
                            </div>
                            <div class="testmonial_author">
                                <h3>Ritesh Rathod</h3>
                                <span>Chief Customer</span>
                                <p>"Booking Chef Mark through Eatery Elevate was the best decision for our anniversary dinner. 
                                    His culinary skills turned our evening into an unforgettable gourmet experience. Highly recommended!"</p>
                            </div>
                        </div>
                        <div class="single_testmonial d-flex">
                            <div class="testmonial_thumb">
                                <img src="img/testmonial/2.png" alt="">
                            </div>
                            <div class="testmonial_author">
                                <h3>Raj Mahajan</h3>
                                <span>Chief Customer</span>
                                <p>"Booking Chef Mark through Eatery Elevate was the best decision for our anniversary dinner.
                                     His culinary skills turned our evening into an unforgettable gourmet experience. Highly recommended!"</p>
                            </div>
                        </div>
                        <div class="single_testmonial d-flex">
                            <div class="testmonial_thumb">
                                <img src="img/testmonial/1.png" alt="">
                            </div>
                            <div class="testmonial_author">
                                <h3>Akash Chauhan</h3>
                                <span>Chief Customer</span>
                                <p>"We had an incredible evening thanks to Chef Hruta. His culinary creations were both innovative and delicious. 
                                 Eatery Elevate provided seamless service from start to finish. We'll definitely book again!"</p>
                            </div>
                        </div>
                        <div class="single_testmonial d-flex">
                            <div class="testmonial_thumb">
                                <img src="img/testmonial/2.png" alt="">
                            </div>
                            <div class="testmonial_author">
                                <h3>Bhushan Dhole</h3>
                                <span>Chief Customer</span>
                                <p>"Chef Maria crafted a meal that was both elegant and delightful. Every bite was a testament to her skill and passion for cooking.
                                     Eatery Elevate made our special occasion truly memorable."</p>
                            </div>
                        </div>
                        <div class="single_testmonial d-flex">
                            <div class="testmonial_thumb">
                                <img src="img/testmonial/1.png" alt="">
                            </div>
                            <div class="testmonial_author">
                                <h3>Pratik Lohar</h3>
                                <span>Chief Customer</span>
                                <p>"Chef Suvarna exceeded all our expectations with her exquisite dishes. The flavors were perfectly balanced, and the presentation was stunning. 
                                    Eatery Elevate made it so easy to enjoy a top-notch dining experience at home."</p>
                            </div>
                        </div>
                        <div class="single_testmonial d-flex">
                            <div class="testmonial_thumb">
                                <img src="img/testmonial/2.png" alt="">
                            </div>
                            <div class="testmonial_author">
                                <h3>Uditanshu Shinde</h3>
                                <span>Chief Customer</span>
                                <p>"Chef Gopal dishes were nothing short of extraordinary! Every bite was a perfect blend of flavors and textures. 
                                The presentation was beautiful, and the taste was unforgettable. Truly a five-star experience!"</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- testmonial_area_end -->

    <jsp:include page="footer.jsp" />