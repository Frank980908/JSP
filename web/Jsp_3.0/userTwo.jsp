<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.text.*" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="computer" %>
<html>
	<body bgcolor="cyan" >
		<computer:GiveRoot coefficientA="3" coefficientB="6" coefficientC="-2" />
		<h4>方程的根保留三位小数点，并计算两个根的和:
		<%
			NumberFormat f = NumberFormat.getInstance();
			f.setMaximumFractionDigits(3);
			if( rootOne != null && rootTwo != null ){
				double r1 = rootOne.doubleValue() ;
				double r2 = rootTwo.doubleValue() ;
				String s1 = f.format(r1);
				String s2 = f.format(r2);
				out.println("<br>根1:" +s1);
				out.println("<br>根2:" +s2);
				double sum = r1 * r2 ;
				out.println("<br>根1与根2之积:"+sum);
			}else{
				out.println("<br>方程没有实根");
			}

		 %>
	</body>
</html>
