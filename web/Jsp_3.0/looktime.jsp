<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.text.*" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="showTime" %>
<html>
	<body bgcolor="cyan" >
		<showTime:GiveTag/>
		 <h3>当前时间</h3>
		 <%= time %>
	</body>
</html>
