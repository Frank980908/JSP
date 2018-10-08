<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 17:17
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan"><font size="2">
    <%
        String s = request.getParameter("boy");
        session.setAttribute("name",s);
    %>
    这里是第一百货.<br>输入你想购买的商品链接到结账:account.jsp.
    <form action="account.jsp" method="post" name="form">
        <input type="text" name="boy">
        <input type="submit" name="submit" value="送出">
    </form>
</font>
</body>
</html>
