<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page  import="java.util.ArrayList, java.util.List" language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" session="false" %>
<html>
<head>
<title>Zadanie 6_2</title>
</head>
<body>	
	<h1>Witaj na Stronie 2</h1>
	<p>ponizej sa linki do poszczegolnych stron:</p>
	<a href="<c:url value="/index63.jsp"/>">Strona 3</a><br>	
	<a href="<c:url value="/index65.jsp"/>">Strona 5</a><br>	
	<a href="<c:url value="/history.jsp"/>">Historia</a><br>
	<%
	HttpSession session = request.getSession(false);
	int counter = (Integer)session.getAttribute("counter");
	session.setAttribute("counter", counter+1);
	 
	List<String> historyList = (List<String>)session.getAttribute("historyList");
	historyList.add("Strona 2");
	session.setAttribute("historyList", historyList);	
	%>
	

</body>
</html>

<%
//https://stackoverflow.com/questions/25664811/httprequest-getsession-is-returning-null?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
//http://tomcat.apache.org/tomcat-7.0-doc/servletapi/javax/servlet/http/HttpServletRequest.html#getSession(boolean)
%>

