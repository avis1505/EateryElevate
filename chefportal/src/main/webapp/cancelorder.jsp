<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%

                        String orderid = request.getParameter("id");
						Connection con=DbConnection.getConnection();
						Statement st = con.createStatement();
						 st.executeUpdate("update booking set `order_status`='Cancelled' where id="+orderid);
						response.sendRedirect("custorders.jsp?msg=Your order amount will refund within 7 business day!");
						%>