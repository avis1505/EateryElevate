<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<jsp:include page="header.jsp" />
    <!-- breadcam_area_start -->
    <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
        <div class="breadcam_inner">
            <div class="breadcam_text">
                <h3>Our Menu</h3>
                <p>"Elevate your dining experience with our diverse and delectable menu, showcasing the finest in culinary craftsmanship." <br> "From starters to desserts, our menu offers a symphony of flavors, expertly prepared to delight your palate and elevate your meal."</p>
            </div>
        </div>
    </div>
    <!-- breadcam_area_end -->

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

						
						Connection con=DbConnection.getConnection();
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
           
   <jsp:include page="footer.jsp" />