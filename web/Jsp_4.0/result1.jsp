<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/7
  Time: 11:22
--%>
<%
    String str = request.getParameter("boy");
    if( str.length() == 0 ){
        response.sendRedirect("inputGuess.jsp");
    }
    try{
        int guessNumber = Integer.parseInt(str) ;
        Integer integer = (Integer)session.getAttribute("save");
        int realNumber = integer.intValue();
        if( guessNumber == realNumber ){
            int n = (Integer)session.getAttribute("count");
            n ++ ;
            session.setAttribute("count",new Integer(n));
            response.sendRedirect("success.jsp");
        }else if( guessNumber > realNumber ){
            int n = (Integer)session.getAttribute("count");
            n ++ ;
            session.setAttribute("count",new Integer(n));
            response.sendRedirect("large.jsp");
        }else if( guessNumber < realNumber ){
            int n = (Integer)session.getAttribute("count");
            n ++ ;
            session.setAttribute("count",new Integer(n));
            response.sendRedirect("small.jsp");
        }
    }catch (Exception e){
        response.sendRedirect("inputGuess.jsp");
    }
%>
