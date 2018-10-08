<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
	<%@ page import="java.io.*" %>
<html>
<body bgcolor="cyan"><font>
	<%!
		StringBuffer personList ;
		int count ; 
		public void judge(){
			if( count == 0 ){
				personList = new StringBuffer();
			}
		}
		public void addPerson( String P ){
			if( count == 0 ){
				personList.append(P);
			}else{
				personList.append(","+P);
			}
			count ++;
		}
	 %>
	 <%
	 	String str = request.getParameter("name");
	 	byte b[] = str.getBytes("iso-8859-1");
	 	str = new String(b);
	 	if( str.length() == 0 || str.length() > 10 ){
	 %> <jsp:forward page="inputName.jsp" />
	 <% }
		judge() ;
		addPerson(str); 
	  %>
	  <br>目前共有<%=count %>个人浏览了该页面，名字是:<br>
	  <%=personList %>
	  </font>
</body>
</html>
