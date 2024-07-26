<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%

String chef_id = request.getParameter("chef_id");
String cust_id = request.getParameter("cust_id");
String rating = request.getParameter("rating");
String rating_msg=request.getParameter("rating_msg");
Connection con=DbConnection.getConnection();
String sql="insert into ratings(`chef_id`,`cust_id`,`rating`,`rating_msg`) values('"+chef_id+"','"+cust_id+"','"+rating+"','"+rating_msg+"')";
PreparedStatement stmt = con.prepareStatement(sql);;
 stmt.executeUpdate();
try {
	response.sendRedirect("custdashboard.jsp");
} catch (Exception e) {
 e.printStackTrace();
}
%>