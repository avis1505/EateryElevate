<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%
MultipartRequest m = new MultipartRequest(request, "C:/Users/Admin/Downloads/chefportal/chefportal/chefportal/chefportal/src/main/webapp/foodmenu");  
%>
<%

String service_name = m.getParameter("name");

String details = m.getParameter("details");
String foodphoto=m.getFile("foodphoto").getName();
Connection con=DbConnection.getConnection();
String sql="insert into food_types(`name`,`details`,`foodphoto`) values('"+service_name+"','"+details+"','"+foodphoto+"')";
PreparedStatement stmt = con.prepareStatement(sql);;
 stmt.executeUpdate();
try {
	response.sendRedirect("foodtypelist.jsp");
} catch (Exception e) {
 e.printStackTrace();
}
%>