<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 17:01
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String str = response.encodeURL("/Jsp_4.0/ch4/jiafei.jsp");
%>
<html>
<body bgcolor="cyan">
我是jerry.jsp页面
<%
    String id = session.getId();
    out.println("<br>你的session对象的ID是:<br>"+id);
%>
<br>单击超链接，链接到jerry.jsp页面。
<br><a href="<%= str %>">欢迎到jiafei.jsp页面！</a>
</body>
</html>
