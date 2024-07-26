
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>

<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Admin Dashboard</h3>
          <p>"Welcome to the Eatery Elevate Cuisine Management Dashboard! Here, you can curate and oversee our diverse range of gourmet offerings.<br> Maintain the highest culinary standards and ensure every dish delights our clients."
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Food Service</h2>
                    </div>
                    <div class="col-lg-3">
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
                       <a href="foodtypeform.jsp" class="btn btn-danger">Add Food Cuisine</a>
                      <%

						
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from food_types");
						
						%>
						<table class="table">
						       <tr>
						            <th>ID</th>
						            <th>Cuisine Name</th>
						            <th>Cuisine Details</th>
						            <th>Action</th>
						       </tr>
						       
						       <%
						           while(rs.next())
						           {
						        	   
						        %>
						           <tr>
						            <td><%=rs.getInt("id")%></td>
						            <td><%=rs.getString("name")%></td>
						            <td><%=rs.getString("details")%></td>
						            <td><a href="deletefoodservice.jsp?id=<%=rs.getInt("id")%>" class="btn btn-danger">Delete</a></td>
						       </tr>
						        <% 
						           } 
						        %>
						</table>
                       
                    </div>
                    
                </div>
            </div>
        </section>
    <!-- ================ contact section end ================= -->
        
   <jsp:include page="footer.jsp" />

