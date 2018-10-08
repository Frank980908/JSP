<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<body><font>
		获取文本框输入的信息:
		<% 
		 request.setCharacterEncoding("UTF-8");
		 String textContent = request.getParameter("boy"); 
			/* byte b[] = textContent.getBytes("iso-8859-1") ;
			textContent = new String(b,"utf-8"); */
		%>
		<%= textContent %>
		<br>获取按钮的名字:
		<% 	String buttonName = request.getParameter("submit");
	 	/* byte c[] = buttonName.getBytes("iso-8859-1");
	 	buttonName = new String(c,"utf-8"); */
		%>
		<%= buttonName %>
		</font>
	</body>

</html>