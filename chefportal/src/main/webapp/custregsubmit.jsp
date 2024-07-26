<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%

String name = request.getParameter("name");

String email = request.getParameter("email");
String password = request.getParameter("password");
String contactno = request.getParameter("contactno");
String address = request.getParameter("address");
Connection con=DbConnection.getConnection();
String sql="insert into customer(`name`,`email`,`password`,`contactno`,`address`) values('"+name+"','"+email+"','"+password+"','"+contactno+"','"+address+"')";
PreparedStatement stmt = con.prepareStatement(sql);;
 stmt.executeUpdate();
try {
	response.sendRedirect("custloginform.jsp");
} catch (Exception e) {
 e.printStackTrace();
}
%>