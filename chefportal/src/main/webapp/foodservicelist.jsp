
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>

<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Admin Dashboard</h3>
          <p>"Welcome to the Eatery Elevate Service Management Dashboard! Oversee and streamline all our gourmet services with ease.<br> Ensure top-notch quality and seamless experiences for every client and event."
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
                       <a href="addfoodserviceform.jsp" class="btn btn-danger">Add Food Service</a>
                      <%

						
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from foodservices");
						
						%>
						<table class="table">
						       <tr>
						            <th>ID</th>
						            <th>Service Name</th>
						            <th>Action</th>
						       </tr>
						       
						       <%
						           while(rs.next())
						           {
						        	   
						        %>
						           <tr>
						            <td><%=rs.getInt("id")%></td>
						            <td><%=rs.getString("service_name")%></td>
						            <td><a href="deletefoodmenu.jsp?id=<%=rs.getInt("id")%>" class="btn btn-danger">Delete</a></td>
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

