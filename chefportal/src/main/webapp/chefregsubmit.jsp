
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<%
MultipartRequest m = new MultipartRequest(request, "C:/Users/Admin/Downloads/chefportal/chefportal/chefportal/chefportal/src/main/webapp/chefimage");  
%>
<%

String name = m.getParameter("name");

String email = m.getParameter("email");
String password = m.getParameter("password");
String contactno = m.getParameter("contactno");
String experience = m.getParameter("experience");
String speciality = m.getParameter("speciality");
String charges = m.getParameter("charges");

String profilephoto=m.getFile("profilephoto").getName();
Connection con=DbConnection.getConnection();
String sql="insert into chef(`name`,`email`,`password`,`experience`,`speciality`,`charges`,`contactno`,`profilephoto`) values('"+name+"','"+email+"','"+password+"','"+experience+"','"+speciality+"','"+charges+"','"+contactno+"','"+profilephoto+"')";
PreparedStatement stmt = con.prepareStatement(sql);;
 stmt.executeUpdate();
try {
	response.sendRedirect("chefloginform.jsp");
} catch (Exception e) {
 e.printStackTrace();
}
%>