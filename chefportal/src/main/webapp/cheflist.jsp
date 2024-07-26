
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>

<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Admin Dashboard</h3>
          <p>"Welcome to the Eatery Elevate Chef Management Dashboard! Manage our talented chefs with ease, ensuring top-notch culinary experiences for every event.<br> Empower our chefs to unleash their creativity and deliver excellence to every plate."</p>
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Chefs</h2>
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
                      
                      <%

						
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select chef.*,food_types.name as foodtype from chef,food_types where food_types.id=chef.speciality");
						
						%>
						<table class="table">
						       <tr>
						            <th>ID</th>
						            <th>Photo</th>
						            <th>Name</th>
						            <th>Email</th>
						            <th>Contact No</th>
						            <th>Experience</th>
						            <th>Speciality</th>
						            <th>Charge per Day</th>
						            <th>Rating</th>
						            <th>Action</th>
						       </tr>
						       
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
						           <tr>
						            <td><%=rs.getInt("id")%></td>
						             <td><img src="<%=request.getContextPath()%>/chefimage/<%=rs.getString("profilephoto")%>" width="60" height="60"></td>
						            <td><%=rs.getString("name")%></td>
						            <td><%=rs.getString("email")%></td>
						            <td><%=rs.getString("contactno")%></td>
						            <td><%=rs.getString("experience")%> Yr</td>
						             <td><%=rs.getString("foodtype")%></td>
						             <td>&#8377;<%=rs.getString("charges")%></td>
						             <td><%=ratings %></td>
						             <td><a href="deletechef.jsp?id=<%=rs.getInt("id")%>" class="btn btn-danger">Delete</a></td>
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

