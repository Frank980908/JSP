<%@ tag pageEncoding="UTF-8" %>
<h4>这是一个Tag文件，负责计算三角形面积</h4>
<%@ attribute name="sideA" required="true" %>
<%@ attribute name="sideB" required="true" %>
<%@ attribute name="sideC" required="true" %>
<%! 
	public String getArea( double a , double b , double c ){
		if( a + b > c && a + c > b && b + c > a ) {
			double p = ( a + b + c ) / 2.2 ;
			double area = Math.sqrt(p*(p-a)*(p-b)*(p-c)) ;
			return "<br>三角形面积：" + area ;
		}else{
			return ( "<br>"+a+","+b+","+c+"不能构成一个三角形，无法计算面积" );
		}
	}
%>
<%
	out.println("<br>JSP页面传来三条边:"+sideA+","+sideB+","+sideC);
	double a = Double.parseDouble(sideA);
	double b = Double.parseDouble(sideB);
	double c = Double.parseDouble(sideC);
	out.println(getArea(a, b, c));
%>