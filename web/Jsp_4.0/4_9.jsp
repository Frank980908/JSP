<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/5
  Time: 22:06
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body bgcolor="cyan"><font size="3">
    <form action="show.jsp" method="post" name="form">
        <br>选择一副图像:
        <select name="image">
            <option value="car.jpg">汽车</option>
            <option value="person.jpg">人物</option>
    </select>
        <br>选择视频或音乐:

        <select name="video">
            <option value="happy.wav">好汉歌</option>
            <option value="moon.wmv">故乡</option>
            <option value="clock.avi">表</option>
        </select>
        <br><input type="submit" value="提交你的选择" name="submit">
    </form>
</font>
</body>
</html>
