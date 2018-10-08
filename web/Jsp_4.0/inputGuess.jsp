<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/7
  Time: 11:19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan"><font size="2">
<p>随机给你分配了一个1到100之间的数，猜猜!</p>
<%
    int number = (int)(Math.random()*100)+1;
    session.setAttribute("count",new Integer(0));
    session.setAttribute("save",new Integer(number));
%>
    <form action="result1.jsp" method="post" name="form"> <%--因为result冲突，将书上的result.jsp改为result1.jsp--%>
    输入你的猜测:<input type="text" name="boy">
        <input type="submit" name="submit" value="送出">
    </form>
</font>
</body>
</html>
