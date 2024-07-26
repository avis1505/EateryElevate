<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%

String name = request.getParameter("name");

String email = request.getParameter("email");
String subject = request.getParameter("subject");
String message = request.getParameter("message");
Connection con=DbConnection.getConnection();
String sql="insert into contact(`name`,`email`,`subject`,`message`) values('"+name+"','"+email+"','"+subject+"','"+message+"')";
PreparedStatement stmt = con.prepareStatement(sql);;
 stmt.executeUpdate();
try {
	response.sendRedirect("index.jsp");
} catch (Exception e) {
 e.printStackTrace();
}
%>