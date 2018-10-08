<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/5
  Time: 21:26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan"><font size="2">
        <%
            long sum = 0 ;
            String s1 = request.getParameter("sum");
            String s2 = request.getParameter("n");
            if( s2.equals("") ){
                s2 = "0";
            }
            if( s1.equals("1") ){
                int n = Integer.parseInt(s2);
                for( int i = 1 ; i <= n ; i++ ){
                    sum = sum + i ;
                }
            }else if( s1.equals("2") ){
                int n = Integer.parseInt(s2) ;
                for( int i = 1 ; i <= n ; i++ ){
                    sum = sum + i * i ;
                }
            }else if( s1.equals("3") ){
                int n = Integer.parseInt(s2);
                    for( int i = 1; i <= n ; i++ ){
                        sum = sum + i * i * i ;
                    }
            }
        %>
<p>你的求和结果是:<%= sum%>
</font>

</body>
</html>
