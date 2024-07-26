<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Chef Dashboard</h3>
          <p>"Hey Chef! Ready to cook up a storm? Your culinary playground awaits  let  make some delicious mischief!"</p>
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
                    </div>
                   
                    <div class="col-lg-12">
                      
                         <%
                         
                         String chefid=session.getAttribute("chefid").toString();
						
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select booking.*,customer.name as custname,customer.address as addr,foodservices.service_name as foodservice,food_types.name as foodmenu from booking,foodservices,food_types,customer where food_types.id=booking.foodtypeid AND foodservices.id=booking.foodserviceid AND customer.id=booking.customer_id AND booking.chef_id='"+chefid+"'");
						
						%>
						<table class="table">
						       <tr>
						            <th>ID</th>
						            <th>Food Service Name</th>
						            <th>Cuisine(Menu) Name</th>
						            <th>Cust Name</th>
						            <th>Address</th>
						            <th>Order Date</th>
						            <th>Event Datetime </th>
						            <th>No oF Guest</th>
						            <th>Ingredient</th>
						            <th>Total Bill Amount</th>
						            <th>Payment Status</th>
						              <th>Order Status</th>
						            
						       </tr>
						       
						       <%
						           while(rs.next())
						           {
						        	   
						        %>
						           <tr>
						            <td><%=rs.getInt("id")%></td>
						            <td><%=rs.getString("foodservice")%></td>
						            <td><%=rs.getString("foodmenu")%></td>
						            <td><%=rs.getString("custname")%></td>
						             <td><%=rs.getString("addr")%></td>
						            <td><%=rs.getString("order_date")%></td>
						            <td><%=rs.getString("eventdate")%></td>
						             <td><%=rs.getString("noofguest")%></td>
						             <td><%=rs.getString("ingredient")%></td>
						             <td>&#8377;<%=rs.getString("bill_amount")%></td>
						            <td><%=rs.getString("payment_status")%></td>
						            <td><%=rs.getString("order_status")%></td>
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