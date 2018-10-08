<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<html>
<body bgcolor="white">
	<font size=3> <br>用户使用的协议是: <%
			String protocol = request.getProtocol();
			out.println(protocol);
		 %> <br>获取接受用户提交信息的页面: <%
		 	String path = request.getServletPath();
		 	out.println(path);
		  %> <br>接受用户提交信息的长度： <%
			int len = request.getContentLength();
			out.println(len) ; 
		 %> <br>用户提交信息的方式: <%
		 	String method = request.getMethod();
		 	out.println(method);
		  %> <br>获取http头文件中的User-Agent的值： <%
		  	String header1 = request.getHeader("User-Agent");
		  	out.println(header1);
		   %> <br>获取http头文件中的accept的值： <%
		  	String header2 = request.getHeader("accept");
		  	out.println(header2);
		   %> <br>获取http头文件中的Host的值： <%
		  	String header3 = request.getHeader("Host");
		  	out.println(header3);
		   %> <br>获取http头文件中的accept-encoding的值： <%
		  	String header4 = request.getHeader("accept-encoding");
		  	out.println(header4);
		   %> <br>获取用户的IP地址： <%
		  	String IP = request.getRemoteAddr();
		  	out.println(IP);
		   %> <br>获取用户机的名称： <%
		  	String clientName = request.getRemoteHost();
		  	out.println(clientName);
		   %> <br>获取服务器的名称： <%
		  	String ServerName = request.getServerName();
		  	out.println(ServerName);
		   %> <br>获取服务器的端口号： <%
		  	int ServerPort = request.getServerPort();
		  	out.println(ServerPort);
		   %> <br>获取用户端提交的所有参数的名字： <%
		  	Enumeration en = request.getParameterNames();
		  	while( en.hasMoreElements() ){
		  		String s = (String)en.nextElement();
		  		out.println(s);
		  	}
		   %> <br>获取头名字的一个枚举 <%
		  	Enumeration enum_headed = request.getHeaderNames();
		  	while( enum_headed.hasMoreElements() ){
		  		String s = (String)enum_headed.nextElement();
		  		out.println(s);
		  	} 
		   %> <br>获取头文件中指定头名字的全部值的一个枚举： <%
		  	Enumeration enum_headedValues = request.getHeaders("cookie");
		  	while( enum_headedValues.hasMoreElements() ){
		  		String s = (String)enum_headedValues.nextElement();
		  		out.println(s);
		  	} 
		   %> <br>文本框提交的信息: <%
		  	 String str = request.getParameter("boy"); 
			 byte b[] = str.getBytes("iso-8859-1") ;
			str = new String(b,"utf-8"); 
		   %> <br><%= str %> <br>按钮的名字: <%
		   		String buttonName = request.getParameter("submit");
		    %> <BR><%= buttonName %> </font>
</body>

</html>