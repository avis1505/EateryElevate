<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<jsp:include page="header.jsp" />
<%

if(session.getAttribute("custid")!=null)
{
	
 %>
  <div class="breadcam_area breadcam_bg_1 zigzag_bg_2">
        <div class="breadcam_inner">
            <div class="breadcam_text">
                <h3>Buy Plans</h3>
                <p>inappropriate behavior is often laughed off as “boys will be boys,” women <br> face higher conduct standards especially in the workplace. That’s why it’s <br> crucial that, as women.</p>
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
                            <h3>Buy  Plans</h3>
                            <p>inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards <br> especially in the workplace. That’s why it’s crucial that, as women.</p>
                        </div>
                    </div>
                </div>
            <div class="row">
           
                  <%

						String id=request.getParameter("id");
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from subscriptionplan where id="+id);
						rs.next();
						%>
						
						         
                <div class="col-xl-4 col-md-6">
                    <div class="single_order">
                      <h4>Plan Details</h4>
                        <div class="order_info">
                            <h3><a href="#"><%=rs.getString("planname")%></a></h3>
                            <div class="order_prise">
                                <span>&#8377;<%=rs.getString("amount")%>/-</span>
                            </div>
                             <p><%=rs.getString("duration")%> <%=rs.getString("dur_unit")%>
                            </p>
                            <p><%=rs.getString("details")%>
                            </p>
                           
                        </div>
                    </div>
                </div>
               
		         
		         <div class="col-xl-8 col-md-6">
		            <form class="form-contact contact_form" action="submitsub.jsp" method="post" id="" >
                            <div class="row">
                               <input type="hidden" name="planid" value="<%=rs.getString("id")%>"/>
                               <h4>Pay Via Credit/Debit Card </h4>
                               <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Name'" placeholder="Name On Card" required>
                                    </div>
                                </div>
                               
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="cardno" id="cardno" type="text"  oninput="this.value = this.value.replace(/[^0-9.]/g, ''); this.value = this.value.replace(/(\..*)\./g, '$1');" maxlength="14" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your email'" placeholder="Card No" required>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="cvv" id="cvv" type="text"  oninput="this.value = this.value.replace(/[^0-9.]/g, ''); this.value = this.value.replace(/(\..*)\./g, '$1');" maxlength="3" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter password '" placeholder="CVV" required>
                                    </div>
                                </div>
                                 <div class="col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="expirydate" id="contexpirydateactno"  type="date" placeholder="Card Expiry Date" required>
                                    </div>
                                </div>
                                
                               
                                
                                
                              
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="button button-contactForm boxed-btn">Order Now</button>
                            </div>
                             
                            
                        </form>
		         </div>
            </div>
        </div>
    </div>
    <!-- order_area_end -->
           
   <jsp:include page="footer.jsp" />
 
 <%


}else {
	response.sendRedirect("custloginform.jsp");
}
%>