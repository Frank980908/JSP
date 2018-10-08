<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 16:32
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="yellow">
    我是first.jsp页面,输入你的姓名链接到second.jsp
<%
    String id = session.getId();
    out.println("<br>你的session对象的ID是:<br>"+id);
%>
<form action="two/second.jsp" method="post" name="form">
    <input type="text" name="boy">
    <input type="submit" name="submit" value="送出">
</form>
</body>
</html>
