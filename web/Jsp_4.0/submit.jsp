<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/7
  Time: 9:19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    <form action="messagePane.jsp" method="post" name="form">
        <P>请输入你的名字:</P>
        <input type="text" name="peopleName">
        <br>
        <p>输入你的留言标题:</p>
        <input type="text" name="Title">
    <br>
        <p>请输入你的留言:</p>
        <br>
        <textarea name="messages" rows="10" cols="36" wrap="physical"></textarea>
        <br>
        <input type="submit" value="提交信息" name="submit">
    </form>
    <form action="showMessage.jsp" method="post" name="form1">
        <input type="submit" value="查看留言板" name="look">
    </form>
</body>
</html>
