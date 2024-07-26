<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<jsp:include page="header.jsp" />
    <!-- breadcam_area_start -->
    <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
        <div class="breadcam_inner">
            <div class="breadcam_text">
                <h3>Our Chefs</h3>
                <p>"Meet the culinary artists behind Eatery Elevate! Our chefs bring passion, creativity, and excellence to every dish.<br> Discover their unique stories and expertise, and see why they are the heart of our gourmet experiences."
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
                            <h3>Popular Chefs</h3>
                            <p>"Discover our most sought-after culinary stars!<br> These popular chefs bring innovation and mastery to every meal, making Eatery Elevate truly exceptional."</p>
                        </div>
                    </div>
                </div>
            <div class="row">
                  <%
                  if(session.getAttribute("custid")==null)
                  {
                	  response.sendRedirect("custloginform.jsp");
                  }
                  
                         String foodid = request.getParameter("id");
              
						
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from chef where speciality='"+foodid+"'");
						
						%>
						 <%
						           while(rs.next())
						           {
						        	    int chefId=rs.getInt("id");
						        	    Statement st1 = con.createStatement();
										ResultSet rs1 = st1.executeQuery("select count(*) as totalrow, sum(`rating`) as totalrating from ratings where chef_id='"+chefId+"'");
										
										rs1.next();
										
										double ratings=0.0;
										int totalrow=rs1.getInt("totalrow");
										int totalrating=rs1.getInt("totalrating");
										if(totalrow>0){
										 ratings=(double)totalrating/totalrow;
						               }
										//String str = String.format("%.1f", (totalrating/totalrow)); 
										rs1.close();
										st1.close();
						        	   
						        %>
						         
                <div class="col-xl-4 col-md-6">
                    <div class="single_order">
                        <div class="order_thumb">
                            <img src="<%=request.getContextPath()%>/chefimage/<%=rs.getString("profilephoto")%>" alt="" width="350" height="270">
                            <div class="order_prise">
                                <span> &#8377; <%=rs.getString("charges")%></span>
                            </div> 
                        </div>
                        <div class="order_info">
                            <h3><a href="#"><%=rs.getString("name")%>    (&#9733; <%=ratings %>)</a></h3>
                            <p>Experience : <%=rs.getString("experience")%> yr
                            </p>
                            <a href="placeorder.jsp?chefid=<%=rs.getInt("id")%>" class="boxed_btn">Select Now!</a>
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