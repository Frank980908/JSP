<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/7
  Time: 10:20
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan"><font size="3">
<%
    String str = request.getParameter("number") ;
    try{
        double number = Double.parseDouble(str) ;
        if( number < 0 ){
            response.setContentType("text/plain; charset=UTF-8");
            out.println(number+"的平方"+(number*number));
        }else if( number >= 0 && number < 100 ){
            response.setContentType("application/msword charset=UTF-8");
            out.println(number+"的立方"+(number*number*number));
        }else{
            response.setStatus(404);
        }
    }catch (Exception e){
        response.sendRedirect("input.jsp");
    }
%>
</font>
</body>
</html>
