<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/7
  Time: 9:35
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<body bgcolor="yellow">
<%
    Vector<String> v = (Vector)application.getAttribute("Mess");
    out.print("<table border=2>") ;
    out.print("<tr>");
        out.print("<td bgcolor=cyan>"+"留言者姓名"+"</td>");
    out.print("<td bgcolor=cyan>"+"留言标题"+"</td>");
    out.print("<td bgcolor=cyan>"+"留言时间"+"</td>");
    out.print("<td bgcolor=cyan>"+"留言内容"+"</td>");
    for( int i = 0 ; i < v.size() ; i++ ){
        out.print("<tr>");
        String message = v.elementAt(i) ;
        byte bb[] = message.getBytes("iso-8859-1") ;
        message = new String(bb,"UTF-8");
        String a[] = message.split("#");
        out.print("<tr>");
        int number = a.length - 1 ;
        for( int k = 0 ; k <= number ; k++ ){
            if( k < number ){
                out.print("<td bgcolor=cyan>"+a[k]+"</td>");
            }else{
                out.print("<td><TextArea rows=3 cols=12>"+a[k]+"</TextArea></td>");
            }
        }
        out.print("</tr>");
    }
    out.print("</table>");
%>
<a href="submit.jsp">返回留言板</a>
</body>
</html>
