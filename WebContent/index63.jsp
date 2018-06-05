<%@ page import="java.util.ArrayList, java.util.List" language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Zadanie 6_3</title>
</head>
<body>
	<h1>Witaj na Stronie 3</h1>
	<p>ponizej sa linki do poszczegolnych stron:</p>
	<a href="<c:url value="/index65.jsp"/>">Strona 5</a><br>	
	<a href="<c:url value="/index61.jsp"/>">Strona 1</a><br>	
	<a href="<c:url value="/history.jsp"/>">Historia</a><br>
	<%
	HttpSession session = request.getSession(false);
	int counter = (Integer)session.getAttribute("counter");
	session.setAttribute("counter", counter+1);
	 
	List<String> historyList = (List<String>)session.getAttribute("historyList");
	historyList.add("Strona 3");
	session.setAttribute("historyList", historyList);
	
	%>
</body>
</html>
