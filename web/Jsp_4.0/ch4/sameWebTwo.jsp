<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 15:39
--%>
<%-- response.setStatus()方法只能在IE浏览器下拦截成功(技术过时) --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan"><font size="2">
    <%
        String mess = request.getHeader("referer");
        if( mess == null ){
            mess = "" ;
            response.setStatus(404);
        }
        if( !( mess.startsWith("http://127.0.0.1:8080/Jsp_4.0/ch4") ) ){
            response.setStatus(404);
        }
    %>
    <P>欢迎访问本页面!</P><br>
    你来自:<%= mess%>
</font>
</body>
</html>
