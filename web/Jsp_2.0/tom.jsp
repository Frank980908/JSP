<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<body bgcolor="cyan">
	<% String str = request.getParameter("computer") ;
	int n = Integer.parseInt(str);
	int sum = 0 ;
	for( int i = 1 ; i <= n ; i++ ){
		sum = sum + i ; 
	}
	%>
	<p> 从1到<%= n %>的连续和是: <%= sum %>
</body>
</html>
