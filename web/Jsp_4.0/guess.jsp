<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 17:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="guessNumber" tagdir="/WEB-INF/tags" %>
<html>
<body bgcolor="cyan"><font size="2">
    <%
        String str = request.getParameter("guessNumber");
        if( str == null ){
            str = "" ;
        }
        if( str.length() == 0 ){
            str = "*" ;
        }
    %>
    <guessNumber:GuessTag number="<%= str%>"/>
    当前猜测结果:<%= message%>
    <%
        if( message.startsWith("你猜对了") ){
    %>       <br><a href="4_18.jsp">重新获得随机数</a>
    <%    }else{
    %>        <br>输入你的猜测:
    <form action="" method="post" name="form">
        <input type="text" name="guessNumber">
        <input type="submit" name="submit" value="送出">
    </form>
    <%      }
    %>
</font>
</body>
</html>
