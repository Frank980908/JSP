<%@ page contentType="text/html; charset=UTF-8" %>
<html>
	<body bgcolor="cyan" ><font size=4>
		获取文本框输入的信息
		<%
			String textContent = request.getParameter("boy");
		 %>
		 <%= textContent %>
		<br>获取按钮的名字：
		<%
			String buttonName = request.getParameter("submit") ;		
		 %>
		 <%= buttonName %>
	</font>
	</body>
</html>