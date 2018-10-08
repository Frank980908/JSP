<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/7
  Time: 8:47
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<body bgcolor="yellow">
<%
    int a = 100 ;
    long b = 300 ;
    boolean c = true ;
    out.println("<h1>这是标题1字体的大小</ht1>");
    out.println("<h2>这是标题1字体的大小</ht2>");
    out.println("<br>");
    out.println(a);
    out.println(b);
    out.println(c);
%>
<center>
    <p><font size="2">以下是一个表格</font></p>
    <%
        out.print("<font face=隶书 size=2>");
        out.println("<table border>");
        out.println("<tr>");
            out.println("<th width=80>"+"姓名"+"</th>");
            out.println("<th width=60>"+"性别"+"</th>");
            out.println("<th width=200>"+"出生日期"+"</th>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>"+"刘甲一"+"</td>");
        out.println("<td>"+"男"+"</td>");
        out.println("<td>"+"1978年5月"+"</td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>"+"林霞"+"</td>");
        out.println("<td>"+"女"+"</td>");
        out.println("<td>"+"1979年8月"+"</td>");
        out.println("</tr>");
        out.println("</table>");
        out.println("</font>");
    %>
</center>
</body>
</html>
