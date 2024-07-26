<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%

String userid = request.getParameter("email");
out.print(userid);

String password = request.getParameter("password");
Connection con=DbConnection.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from admin where email='" + userid + "' and password='" + password + "'");
try {
	if(rs.next()){
 if (rs.getString("password").equals(password) && rs.getString("email").equals(userid)) {
	 session.setAttribute("adminid", rs.getInt("id"));
	 session.setAttribute("adminid", rs.getString("name"));
	 response.sendRedirect("admindashboard.jsp");
 } else {
	 response.sendRedirect("adminlogin.jsp?error=Invalid Email or password");
 }
	}else{
		response.sendRedirect("adminlogin.jsp?error=Invalid Email or password");
	}
} catch (Exception e) {
 e.printStackTrace();
}
%>