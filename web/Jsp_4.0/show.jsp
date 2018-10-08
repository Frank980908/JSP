<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/5
  Time: 22:11
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan"><font size="3">
    <%
        String s1 = request.getParameter("image");
        String s2 = request.getParameter("video");
    %>
    <image src="<%= s1 %>" width="200" height="160">图像</image>
    <embed src="<%= s2 %>" width="300" height="180"></embed>

</font>

</body>
</html>
