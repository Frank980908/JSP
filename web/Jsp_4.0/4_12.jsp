<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 15:06
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<body bgcolor="cyan"><font size="4">
    <P>现在的时间是:</P><br>
    <%
        out.println(""+new Date());
        response.setHeader("Refresh","5");
    %>
</font>
</body>
</html>
