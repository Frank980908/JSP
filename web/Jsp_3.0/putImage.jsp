<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pic" %>
<html>
	<body>
		<Font size=2>表格每行重复显示一副图像</Font>
		<table border=2>
			<pic:Image>
				<image src ="a.jpg" wigth=80 height=60 >
			</pic:Image>	
			<pic:Image>
				<image src ="b.jpg" wigth=80 height=60 >
			</pic:Image>	
			<pic:Image>
				<image src ="c.jpg" wigth=80 height=60 >
			</pic:Image>			
		</table>
	</body>
</html>