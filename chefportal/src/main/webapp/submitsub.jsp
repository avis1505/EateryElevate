<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import = "java.io.*, java.text.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%

if(session.getAttribute("custid")!=null)
{
	String custid=session.getAttribute("custid").toString();
String planid = request.getParameter("planid");

String cardno = request.getParameter("cardno");
String cvv = request.getParameter("cvv");

String expirydate = request.getParameter("expirydate");

DateFormat format = new SimpleDateFormat("YYYY-MM-dd", Locale.ENGLISH);
java.util.Date expdate = format.parse(expirydate);
String expfinal=format.format(expdate);

String subdate=format.format(new java.util.Date());



Connection con=DbConnection.getConnection();
String sql="INSERT INTO `cust_subscription`(`cust_id`, `plan_id`, `sub_date`, `cardno`, `cvv`, `expirydate`) VALUES('"+custid+"','"+planid+"','"+subdate+"','"+cardno+"','"+cvv+"','"+expfinal+"')";

//out.println(sql);
PreparedStatement stmt = con.prepareStatement(sql);;
 stmt.executeUpdate();
try {
	
	
	
		response.sendRedirect("ordersuccess.jsp?msg=your payment is successful...Chef will visit soon");
	

} catch (Exception e) {
 e.printStackTrace();
}
}else {
	response.sendRedirect("custloginform.jsp");
}
%>