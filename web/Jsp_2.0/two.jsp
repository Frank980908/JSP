<%@ page contentType="text/html; charset=UTF-8" %>
<head>
	<jsp:include page="head.txt"/>
</head>
<html>
<body bgcolor="yellow">
	<P><font size="2" color="blue">
			This is two.jsp.
	</font>
	<font size="3">
		<%
			String s = request.getParameter("number");
			out.println("<BR>传过来的值为:"+s);
		 %>
		 <br><img src="a.jpg" width="<%= s %>" height="<%= s %>" ></img>
	</font>
	

</body>
</html>