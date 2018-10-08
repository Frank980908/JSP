<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<html>
<body bgcolor="cyan">
	<font size=3> <%  double x = 0.9 , y = 3 ; %>
		<P>
			Sin(<%= x %>)除以<%= y %>等于<%= Math.sin(x)/y %>
			
		<p><%= y %>的平方是:<%= Math.pow(y,2) %>
		<% x = 19 ; y = 32 ; %>
		<P><%= x %>乘以<%= y %>等于<%= x*y %>
		
	</font>

</body>
</html>
