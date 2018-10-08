<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/5
  Time: 21:17
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan"><font size="2">
        <form action="sum.jsp" method="post" name="form">
            选择计算的方式:<br>
            <select name="sum" size="3">
                <option selected value="1"> 计算1到n的连续和
                <option value="2">计算1到n的平方和
                <option value="3">计算1到n的立方和
            </select>
    <br>选择n的值:<br>
    <select name="n" >
        <option value="10">n=10
        <option value="20">n=20
        <option value="30">n=30
        <option value="40">n=40
        <option value="50">n=50
        <option value="100">n=100
    </select>
    <br><input type="submit" value="提交你的选择" name="submit">
        </form>
</font>

</body>
</html>
