<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 15:12
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    <%
        String str = null ;
        str = request.getParameter("boy") ;
        if( str == null ){
            str = "";
        }
        byte b[] = str.getBytes();
        str = new String(b,"UTF-8");
        if( str.equals("") ){
            response.sendRedirect("4_13.jsp");
        }else{
            out.print("欢迎你来到本网页!");
            out.print(str);
        }
    %>
</body>
</html>
