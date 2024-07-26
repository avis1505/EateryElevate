<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% 
session.removeAttribute("chefid");
session.removeAttribute("custid");
session.removeAttribute("adminid");
response.sendRedirect("index.jsp");
%>