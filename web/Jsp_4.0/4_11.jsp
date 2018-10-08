<%--
  Created by IntelliJ IDEA.
  User: 李志文
  Date: 2018/10/6
  Time: 11:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="java.awt.*" %>
<%@ page import ="java.io.*" %>
<%@ page import ="java.awt.image.*" %>
<%@ page import ="java.awt.geom.*" %>
<%@ page import ="com.sun.image.codec.jpeg.*" %>
<%@ page import="java.nio.Buffer" %>
<html>
<body ><br>观看旋转的椭圆
<form action="" method="post" name="form">
    <input type="submit" value="观看" name="submit">
</form>
<%
    String str = request.getParameter("submit");
    if( str != null ){
        response.setContentType("image/jpeg");
        int width = 260 , height = 260 ;
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_BGR);
        Graphics g = image.getGraphics();
        g.setColor(Color.WHITE);
        g.fillRect(0,0,width,height);
        Graphics2D g_2d = (Graphics2D) g;
        Ellipse2D ellipse = new Ellipse2D.Double(20,50,120,50);
        g_2d.setColor(Color.blue);
        AffineTransform trans = new AffineTransform();
        for( int i = 1 ; i <= 24 ; i++ ){
            trans.rotate(15.0*Math.PI/180,75,75);
            g_2d.setTransform(trans);
            g_2d.draw(ellipse);
        }
        g.dispose();
        OutputStream outClient = response.getOutputStream();
        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(outClient);
        encoder.encode(image);
    }
%>
</body>
</html>
