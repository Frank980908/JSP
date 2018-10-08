<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 17:16
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan"><font size="2">
    <% session.setAttribute("customer","顾客"); %>
    <p>输入你的姓名链接到第一百货: shop.jsp </p>
    <form action="shop.jsp" method="post" name="form">
        <input type="text" name="boy">
        <input type="submit" name="submit" value="送出">
    </form>
</font>
</body>
</html>
