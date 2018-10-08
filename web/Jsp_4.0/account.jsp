<%@ page import="com.sun.org.apache.regexp.internal.REUtil" %><%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 17:19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    public String getString( String s ){
        if( s == null ){
            s = "" ;
        }
        try{
            byte b[] = s.getBytes("ISO-8859-1");
            s = new String(b,"UTF-8");
        }catch( Exception e ){}
        return  s ;
    }
%>
<html>
<body bgcolor="cyan"><font size="2">
    <%
        String s = request.getParameter("boy");
        session.setAttribute("goods",s);
    %>
    <br>
    <%
        String 顾客 = (String)session.getAttribute("customer");
        String 姓名 = (String)session.getAttribute("name");
        String 商品 = (String)session.getAttribute("goods");
        姓名 = getString(姓名);
        商品 = getString(商品);
    %>
    这里是结账处,<%= 顾客%>的姓名是:<%= 姓名%>
    <br>选择购买的商品是:<%= 商品%>
</font>
</body>
</html>
