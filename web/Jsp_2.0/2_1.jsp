<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>

<%!Date date;
	int sum ;
	
	public int getFactorSum(int n) {
	sum = 0 ;
		for (int i = 1; i < n; i++) {
			if (n % i == 0) {
				sum = sum + i;
			}
		}
		return sum;
	}%>

<html>
<body bgcolor="cyan">
	<font size=4><P>
			程序片创建Date对象:
			<%
		date = new Date();
		   out.println("<br>"+date+"<br>");
		   int m = 100 ;
	%>
			<%=m%>
			的因子之和是(不包括<%=m%>):
			
			<%=getFactorSum(m) %>
		
	</font>

</body>
</html>
