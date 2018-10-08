<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<html>
<body>
	<FORM action=""  method=post name=form >
		<INPUT type="text" name="ok"  >
		<BR><INPUT TYPE="submit" value="送出" name=submit>
	</FORM>
	<% String a = request.getParameter("ok") ;
		if( a == null ){
			a = "1";
		}
		try{
			double number = Integer.parseInt(a);
			out.print(a+"的平方根:"+Math.sqrt(number));
		}catch( NumberFormatException e ){
			out.print("<BR>"+"请输入数字字符");
		}
	
	%>
</body>
</html>
