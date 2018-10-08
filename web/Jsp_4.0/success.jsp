<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/7
  Time: 11:30
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan"><font size="2">
   <%
        int count = ((Integer)session.getAttribute("count")).intValue();
        int num = ((Integer)session.getAttribute("save")).intValue();
   %>
    <p>恭喜你，猜对了</p>
    <br>你共猜了<%= count%>次,这个数字就是<%= num%>.
    <br>单击超链接返回到inputGuess.jsp页面:
    <br><a href="inputGuess.jsp">inputGuess.jsp</a>
</font>
</body>
</html>
