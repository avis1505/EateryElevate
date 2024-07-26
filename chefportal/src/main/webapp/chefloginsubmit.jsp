<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,dbconnection.DbConnection"%>
<%

String userid = request.getParameter("email");


String password = request.getParameter("password");
Connection con=DbConnection.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from chef where email='" + userid + "' and password='" + password + "'");
try {
	if(rs.next()){
		
	
 if (rs.getString("password").equals(password) && rs.getString("email").equals(userid)) {
	 session.setAttribute("chefid", rs.getInt("id"));
	 session.setAttribute("chefname", rs.getString("name"));
     response.sendRedirect("chefdashboard.jsp");
 } else {
	 response.sendRedirect("chefloginform.jsp?error=Invalid Email or password");
 }
	}else{
		response.sendRedirect("chefloginform.jsp?error=Invalid Email or password");
	}
} catch (Exception e) {
 e.printStackTrace();
}
%>>