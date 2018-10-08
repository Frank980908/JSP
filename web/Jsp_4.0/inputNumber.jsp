<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/7
  Time: 10:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags" %>
<html>
<body bgcolor="yellow"><font size="5">
    <form action="" method="post" name="form">
    输入运算数，输入运算符号:<br>
        <input type="text" name="numberOne" size="6">
        <select name="operator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
        <input type="text" name="numberTwo" size="6">
        <br><input type="submit" value="提交你的选择" name="submit">
    </form>
    <%
        String a = request.getParameter("numberOne");
        String b = request.getParameter("numberTwo");
        String operator = request.getParameter("operator");
        if( a == null || b == null ){
            a = "" ;
            b = "" ;
        }
        if( a.length() > 0 && b.length() > 0 ){
            %> <computer:Computer numberA="<%= a%>" numberB="<%= b%>" operator="<%= operator%>"/>
            计算结果：<%= a%><%= operator%><%=b%>=<%= result%>
    <%
        }
    %>
</font>
</body>
</html>
