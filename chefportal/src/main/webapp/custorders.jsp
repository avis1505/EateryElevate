<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Customer Dashboard</h3>
          <p>"Time to feast or fast? My orders tell the tale! <br>Let see what delicious delights are on the way  or if it is time to raid the pantry!"</p>
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">My Orders</h2>
                        
                        <%
                            
                              if(request.getParameter("msg")!=null)
                              {
                            	  String msg=request.getParameter("msg");
                         %>
                               <p class="text-center" style="color:red;"><%=msg %></p>
                         <% } %>
                    </div>
                   
                    <div class="col-lg-12">
                      
                         <%
                         
                        String custid=session.getAttribute("custid").toString();
						
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select booking.*,chef.name as chefname,foodservices.service_name as foodservice,food_types.name as foodmenu from booking,chef,foodservices,food_types where food_types.id=booking.foodtypeid AND foodservices.id=booking.foodserviceid AND chef.id=booking.chef_id AND booking.customer_id='"+custid+"'");
						
						%>
						<table class="table">
						       <tr>
						            <th>ID</th>
						            <th>Food Service Name</th>
						            <th>Cuisine(Menu) Name</th>
						            <th>Chef Name</th>
						            <th>Order Date</th>
						            <th>Event Datetime </th>
						            <th>No oF Guest</th>
						            <th>Ingredient</th>
						            <th>Total Bill Amount</th>
						            <th>Payment Status</th>
						            <th>Order Status</th>
						            <th>Action</th>
						       </tr>
						       
						       <%
						           while(rs.next())
						           {
						        	   
						        %>
						           <tr>
						            <td><%=rs.getInt("id")%></td>
						            <td><%=rs.getString("foodservice")%></td>
						            <td><%=rs.getString("foodmenu")%></td>
						            <td><%=rs.getString("chefname")%></td>
						            <td><%=rs.getString("order_date")%></td>
						            <td><%=rs.getString("eventdate")%></td>
						             <td><%=rs.getString("noofguest")%></td>
						             <td><%=rs.getString("ingredient")%></td>
						             
						             <td>&#8377;<%=rs.getString("bill_amount")%></td>
						             <td><%=rs.getString("payment_status")%></td>
						             <td><%=rs.getString("order_status")%></td>
									 <td><a href="cancelorder.jsp?id=<%=rs.getInt("id")%>" class="btn btn-success btn-sm">Cancel Order</a> <br/>&nbsp;&nbsp; <a href="addratingform.jsp?id=<%=rs.getInt("id")%>" class="btn btn-primary btn-sm">Rating</a></td>
						             
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