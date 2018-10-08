<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<body bgcolor="cyan">
<font size=5>
	<% String str = request.getParameter("number"); 
		double n = Double.parseDouble(str) ;
	%>
	<p>你传过来的值为:<BR>
	<%= n %>
	
</font>
	
</body>
</html>
