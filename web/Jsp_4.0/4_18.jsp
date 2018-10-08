<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 17:34
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan"><font size="2">
随机给你分配了一个1-100之间的数,猜猜！
    <%
        int num = (int)(Math.random()*100) + 1 ;
        session.setAttribute("count",new Integer(0));
        session.setAttribute("save",new Integer(num));
    %><br><a href="guess.jsp">去猜猜这个数</a>
</font>
</body>
</html>
