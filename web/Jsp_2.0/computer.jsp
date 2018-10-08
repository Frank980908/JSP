<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page isThreadSafe="true" %>
<html>
<body bgcolor="cyan">
	<%! int i = 1 ; %>
	<%
		for( int k = 1 ; k <= 100 ; k++ ){
			out.println(i);
			i ++ ;
		}
	 %>
</body>
</html>
