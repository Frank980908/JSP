<%@ page contentType="text/html; charset=UTF-8" %>
<head>
	<jsp:include page="head.txt"/>
</head>
<html>
<body bgcolor="yellow">
	<P><font size=2 color=red >This is error.jsp </font>
		<font size="3">
		<%
			String s = request.getParameter("number");
			out.println("<BR>传过来的错误信息为:"+s);
		 %>
		 <br><img src="b.jpg" width="120" height="120" ></img>
	</font>
	
</body>
</html>