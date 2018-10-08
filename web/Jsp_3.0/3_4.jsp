<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="show" %>
<html>
	<body bgcolor="cyan" >
		<%
			LinkedList<String> listName = new LinkedList<String>() ; 
			LinkedList<Double> listScore = new LinkedList<Double>() ; 
			listName.add("张三");
			listScore.add(new Double(87));
			listName.add("李四");
			listScore.add(new Double(65));
			listName.add("刘小记");
			listScore.add(new Double(57));
			listName.add("王大林");
			listScore.add(new Double(99));
			listName.add("孙进步");
			listScore.add(new Double(88));
		 %>
		 <P> 成绩单:
		 <show:Sort title = "姓名" item="高等数学" 
		  listName = "<%= listName %>" listScore="<%= listScore %>"/>
		 
	</body>
</html>
