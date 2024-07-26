<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<jsp:include page="header.jsp" />
 <!-- breadcam_area_start -->
 <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
    <div class="breadcam_inner">
       <div class="breadcam_text">
          <h3>Admin Dashboard</h3>
          <p>"Welcome to the Eatery Elevate Subscription Management Dashboard! Manage and optimize our subscription plans to cater to every taste and preference.<br> Empower our clients with flexible and convenient dining options, ensuring a truly personalized experience."</p>
       </div>
    </div>
 </div>
 <!-- breadcam_area_end -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">
                
    
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">All Subscription</h2>
                    </div>
                   
                    <div class="col-lg-12">
                      
                         <%
                         
                        
						
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select cust_subscription.*,customer.name as custname,customer.address as addr,subscriptionplan.planname as planname ,subscriptionplan.amount as amount from cust_subscription,subscriptionplan,customer where  customer.id=cust_subscription.cust_id AND cust_subscription.plan_id=subscriptionplan.id");
						
						%>
						<table class="table">
						       <tr>
						            <th>ID</th>
						          
						            <th>Plan Name</th>
						            <th>Customer</th>
						            <th>Address</th>
						            <th>Subscription Date</th>
						           
						            <th>Total Bill Amount</th>
						            
						            <th>Payment Status</th>
						           
						            
						       </tr>
						       
						       <%
						           while(rs.next())
						           {
						        	   
						        %>
						           <tr>
						            <td><%=rs.getInt("id")%></td>
						            <td><%=rs.getString("planname")%></td>
						            
						              <td><%=rs.getString("custname")%></td>
						                <td><%=rs.getString("addr")%></td>
						            <td><%=rs.getString("sub_date")%></td>
						          
						           
						             <td>&#8377;<%=rs.getString("amount")%></td>
						             <td>Paid</td>
						             
						            
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