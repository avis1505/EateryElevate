<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<jsp:include page="header.jsp" />
    <!-- breadcam_area_start -->
    <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
        <div class="breadcam_inner">
            <div class="breadcam_text">
                <h3>Customer Rating</h3>
                <p>"Discover what our customers love! Dive into the Customer Rating page to see how Eatery Elevate transforms dining experiences.<br> Your reviews and ratings help us continually raise the bar in gourmet excellence."</p>
            </div>
        </div>
    </div>
    <!-- breadcam_area_end -->
    
    <style>

.star {
  font-size: 5vh;
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

    <!-- order_area_start -->
    <div class="order_area">
        <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="section_title mb-70">
                          <%
                          String id=request.getParameter("id");
                Connection con=DbConnection.getConnection();
                Statement st2 = con.createStatement();
				ResultSet rs2 = st2.executeQuery("select * from foodservices where id="+id);
				rs2.next();
              
              %>
                            <h3><%=rs2.getString("service_name") %></h3>
                            <p><%=rs2.getString("details")%></p>
                        </div>
                    </div>
                </div>
            <div class="row">
                  <%
                  rs2.close();
						
					
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from ratings");
						
						%>
						 <%
						           while(rs.next())
						           {
						        	   int chefId=rs.getInt("chef_id");
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
						         
                <div class="col-xl-12 col-md-12">
                    <div class="single_order">
                        <div class="order_thumb">
                       
                        <div class="order_info">
                            <h3><a href="#">  <span 
							              class="star">&#9733;
							        </span><%=ratings%></a></h3>
                            <p><%=rs.getString("rating_msg")%>
                            </p>
                          
                        </div>
                    </div>
                </div>
               
            </div>
             <% 
		            } 
		         %>
        </div>
    </div>
    <!-- order_area_end -->
           
   <jsp:include page="footer.jsp" />