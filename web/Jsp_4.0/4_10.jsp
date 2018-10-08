<%@ page import="javax.swing.text.html.FormSubmitEvent" %><%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 11:08
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan" ><font size="1">
    <P>我正在学习response对象的</P>
    <br>setContentType方法
    <P>将当前页面保存为word文档吗</P>
    <form action="" method="get" name="form" >
        <input type="submit" value="yes" name="submit" >
    </form>
    <%
        String str = request.getParameter("submit");
        if( str == null ){
            str = "" ;
        }
        if( str.equals("yes") ){
            response.setContentType("application/msword;charset=UTF-8");
        }
    %>
</font>
</body>
</html>
