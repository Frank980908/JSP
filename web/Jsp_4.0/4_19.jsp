<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 21:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<body bgcolor="yellow"><font size="3">
    <%
        session.setMaxInactiveInterval(10);
        boolean boo = session.isNew() ;
        out.println("<br>如果你第一次访问当前web服务目录，你的会话是新的");
        out.println("<br>如果你不是第一次访问当前web服务目录，你的会话不是新的");
        out.println("<br>会话是新的吗?"+boo);
        out.println("<br>欢迎来到本页面，你的session允许的最长发呆时间为"+session.getMaxInactiveInterval()+"秒");
        out.println("<br>你的session创建时间是:"+new Date(session.getCreationTime()));
        out.println("<br>你的session的Id是"+session.getId());
        Long lastTime = (Long)session.getAttribute("lastTime");
        if( lastTime == null ){
            long n = session.getLastAccessedTime();
            session.setAttribute("lastTime",new Long(n));
        }else{
            long m = session.getLastAccessedTime();
            long n = ((Long)session.getAttribute("lastTime")).longValue();
            out.println("<br>你的发呆时间大约是"+(m-n)+"毫秒，大约"+(m-n)/1000+"秒");
            session.setAttribute("lastTime",new Long(m));
        }
    %>
</font>
</body>
</html>
