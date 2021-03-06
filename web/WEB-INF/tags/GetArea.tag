<%@ tag pageEncoding="UTF-8"%>
<%@ attribute name="numberA" required="true"%>
<%@ attribute name="numberB" required="true"%>
<%@ attribute name="numberC" required="true"%>
<%@ attribute name="condition" required="true"%>
<%@ variable name-given="area" variable-class="java.lang.Double"
	scope="AT_END"%>
<%@ variable name-given="message" scope="AT_END"%>
<%!public double getTriangleArea(double a, double b, double c) {
		if (a + b > c && a + c > b && b + c > a) {
			double p = (a + b + c) / 2.0;
			double area = Math.sqrt(p * (p - a) * (p - b) * (p - c));
			return area;
		} else {
			return -1;
		}
	}

	public double getLaderArea(double above, double bottom, double h) {
		double area = (above + bottom) * h / 2.0;
		return area;
	}%>
<%
	try {
		double a = Double.parseDouble(numberA);
		double b = Double.parseDouble(numberB);
		double c = Double.parseDouble(numberC);
		double res = 0;
		if (condition.equals("triangle")) {
			res = getTriangleArea(a, b, c);
			jspContext.setAttribute("area", new Double(res));
			jspContext.setAttribute("message", "三角形面积");
		} else if (condition.equals("lader")) {
			res = getTriangleArea(a, b, c);
			jspContext.setAttribute("area", new Double(res));
			jspContext.setAttribute("message", "梯形面积");
		}
	} catch (Exception e) {
		jspContext.setAttribute("area", new Double(-1.0));
		jspContext.setAttribute("message", "请选择类型");
	}
%>