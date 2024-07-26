<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%

                        String foodid = request.getParameter("id");
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						 st.executeUpdate("delete from food_types where id="+foodid);
						response.sendRedirect("foodtypelist.jsp");
						%>