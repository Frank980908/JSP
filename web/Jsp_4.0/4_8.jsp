<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/5
  Time: 21:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan" ><font size="3">
    <form action="answer.jsp" method="post" name="form">
        <table border="1">
            <tr>
                <th>球王贝利是哪个国家的人</th>
                <th>曾经获得过世界杯冠军的球队</th>
            </tr>
            <tr>
            <td>
        <input type="radio" name="R" value="巴西" >巴西
        <input type="radio" name="R" value="德国" >德国
        <input type="radio" name="R" value="美国" >美国
        <input type="radio" name="R" value="法国" checked="ok" >法国
            </td>


        <td>
        <input type="checkbox" name="item" value="法国国家队" >法国国家队
        <input type="checkbox" name="item" value="中国国家队" >中国国家队
        <input type="checkbox" name="item" value="巴西国家队" >巴西国家队
        <input type="checkbox" name="item" value="美国国家队" >美国国家队
        <input type="hidden" value="喜欢世界杯!" name="secret" >
        </td>

            </tr>
            <tr>
                <td><input type="submit" value="提交" name="submit" ></td>
                <td><input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>

</font>

</body>
</html>
