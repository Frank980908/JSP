<%@ tag pageEncoding="UTF-8"%>
<body bgcolor="cyan">
	<P>
		<%
			int size = 1;
			for (int i = 1; i <= 3; i++) {
				size++;
		%>
		<font size=<%=size%>> <jsp:doBody /> </font>
		<%
			}
		%>

	</P>
</body>
