<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 16:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String str = response.encodeURL("/Jsp_4.0/ch4/two/tom.jsp");
%>
<html>
<body bgcolor="cyan">
我是jiafei.jsp页面，输入你的姓名链接到tom.jsp
<%
    String id = session.getId();
    out.println("<br>你的session对象的ID是:<br>"+id);
%>
<form action="<%= str%>" method="post" name="form">
    <input type="text" name="boy">
    <input type="submit" name="submit" value="送出">
</form>
</body>
</html>
