<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<body bgcolor="cyan">
	<% double i = Math.random() ; %>
	<jsp:forward page="come.jsp">
	<jsp:param value="<%= i %>" name="number" />
	</jsp:forward>
</body>
</html>
