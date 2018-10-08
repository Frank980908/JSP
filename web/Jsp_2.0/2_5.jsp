<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<html>
<body bgcolor="cyan">
	<font size=4>
		<P> 请输入 E-mail： <br>
		<FORM action = "" method = get name = form >
			<INPUT type="text" name="client" value="请输入E-mail" >
			<INPUT type="submit" value="送出" name=submit>
			</FORM>
		<% String str = request.getParameter("client") ;
			if( str != null ){
				int idx = str.indexOf("@");
				if( idx == -1 ){
		%>			
				<br> 你的E-mail地址中没有@.
			<% 
				}else{
					int space = str.indexOf(" ");
					if( space != -1 ){
					%>
					<br>你的E-mail地址含有非法的空格.
					<%
					}else{
						int start = str.indexOf("@");
						int end = str.lastIndexOf("@");
						if( start != end ){
							%>
							<br>你的E-mail地址含有两个以上的@.
							<%
						}else{
							out.print("<BR>"+str);
							%>
							<br>你的E-mail地址书写正确.
						<%
						}
					
					}
				}
			}
		
		%>
	</font>

</body>
</html>
