<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%

String service_name = request.getParameter("service_name");

String details = request.getParameter("details");
Connection con=DbConnection.getConnection();
String sql="insert into foodservices(`service_name`,`details`) values('"+service_name+"','"+details+"')";
PreparedStatement stmt = con.prepareStatement(sql);;
 stmt.executeUpdate();
try {
	response.sendRedirect("foodservicelist.jsp");
} catch (Exception e) {
 e.printStackTrace();
}
%>