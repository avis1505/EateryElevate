<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%

if(session.getAttribute("custid")!=null)
{
	String custid=session.getAttribute("custid").toString();
String service_name = request.getParameter("service_name");

String food_types = request.getParameter("food_types");
String chefid = request.getParameter("chefid");

String noofguest = request.getParameter("noofguest");

String ingredient = request.getParameter("ingredient");
String noofdays = request.getParameter("noofdays");
String eventdate = request.getParameter("eventdate");
String totalamt = request.getParameter("totalamt");
String preparation = request.getParameter("preparation");
String workers = request.getParameter("workers");
String nofoworker = request.getParameter("nofoworker");
String payment=request.getParameter("payment");

Connection con=DbConnection.getConnection();
String sql="INSERT INTO `booking`(`customer_id`, `chef_id`, `bill_amount`, `payment_status`, `order_status`, `ingredient`, `noofguest`, `noofday`, `eventdate`, `foodtypeid`, `foodserviceid`,`preparation`,`workers`,`nofoworker`) VALUES('"+custid+"','"+chefid+"','"+totalamt+"','Paid','Placed','"+ingredient+"','"+noofguest+"','"+noofdays+"','"+eventdate+"','"+food_types+"','"+service_name+"','"+preparation+"','"+workers+"','"+nofoworker+"')";

//out.println(sql);
PreparedStatement stmt = con.prepareStatement(sql);;
 stmt.executeUpdate();
try {
	if(payment=="Cash" || payment.equalsIgnoreCase("Cash"))
	{
		response.sendRedirect("ordersuccess.jsp?msg=Chef will visit soon");
	}
	
	if(payment=="Online" || payment.equalsIgnoreCase("Online"))
	{
		response.sendRedirect("paymentform.jsp?id="+totalamt);
	}

} catch (Exception e) {
 e.printStackTrace();
}
}else {
	response.sendRedirect("custloginform.jsp");
}
%>