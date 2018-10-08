<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<html>
<body bgcolor="cyan">
	<font size=3> 
	<P>请输入三角形的三边长a, b , c的长度:
   <!--  以下是html表单，向服务器发送三角形的三边长 -->
		<FORM  action="" method=post name=form>
		<P>请输入三角形的边a的长度 <INPUT type="text" name="a" >
		<P>请输入三角形的边b的长度 <INPUT type="text" name="b" >
		<P>请输入三角形的边c的长度 <INPUT type="text" name="c" >
		<input type="submit" name = submit value="送出"> 
		</FROM>
		
		<%-- 获取用户提交的数据 --%>
		<% String string_a = request.getParameter("a") ,
			string_b = request.getParameter("b"),
			string_c = request.getParameter("c") ;
		 	double a = 0 , b = 0 , c = 0 ;
		  %>
		  <%-- 判断字符串是否是空对象，如果是空对象就初始化 --%>
		  <% 
		  	if( string_a == null ){
		  		string_a = "0";
		  		string_b = "0";
		  		string_c = "0";
		  	}
		   %>
		   <%-- 求出边长，计算面积 --%>
		   <%
		   		try{
		   			a = Double.valueOf(string_a).doubleValue();
		   			b = Double.valueOf(string_b).doubleValue();
		   			c = Double.valueOf(string_c).doubleValue();
		   			if( a + b > c && a + c > b && b + c > a ){
		   				double p = ( a + b + c ) / 2.0 ;
		   				double area = Math.sqrt(p*(p-a)*(p-b)*(p-c));
		   				out.print("<BR>"+"三角形面积"+area);
		   			}else{
		   				out.print("<BR>"+"你输入的边不能构成一个三角形");
		   			}
		   		}catch( NumberFormatException e ){
		   			out.print("<BR>"+"请输入数字字符");
		   		}
		    %>
	</font>

</body>
</html>
