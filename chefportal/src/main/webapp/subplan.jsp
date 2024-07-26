<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<jsp:include page="header.jsp" />
    <!-- breadcam_area_start -->
    <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
        <div class="breadcam_inner">
            <div class="breadcam_text">
                <h3>Our Plans</h3>
                <p>"Culinary excellence awaits! <br>Explore our chef service plans and indulge in gourmet dining tailored to your taste."</p>
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
                            <h3>Our  Plans</h3>
                            <p>"Choose the perfect plan to elevate your dining experience! Our chef services are designed to cater to your culinary needs,
                             offering bespoke menus and gourmet delights. Find a plan that fits your lifestyle and savor exceptional meals every day."</p>
                        </div>
                    </div>
                </div>
            <div class="row">
                  <%

						
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from subscriptionplan");
						
						%>
						 <%
						           while(rs.next())
						           {
						        	   
						        %>
						         
                <div class="col-xl-4 col-md-6">
                    <div class="single_order">
                     
                        <div class="order_info">
                            <h3><a href="#"><%=rs.getString("planname")%></a></h3>
                            <div class="order_prise">
                                <span>&#8377;<%=rs.getString("amount")%>/-</span>
                            </div>
                             <p><%=rs.getString("duration")%> <%=rs.getString("dur_unit")%>
                            </p>
                            <p><%=rs.getString("details")%>
                            </p>
                            <a href="busub.jsp?id=<%=rs.getInt("id")%>" class="boxed_btn">Buy!</a>
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