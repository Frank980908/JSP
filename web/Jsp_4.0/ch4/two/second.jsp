<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 16:34
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    我是second.jsp页面
    <%
        String id = session.getId();
        out.println("你的session对象的ID是:<br>"+id);
    %>
<br>单击超链接,链接到third.jsp的页面.
<br><a href="/Jsp_4.0/ch4/three/third.jsp">欢迎去third.jsp页面!</a>
</body>
</html>
