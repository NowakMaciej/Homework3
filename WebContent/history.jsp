<%@ page import="java.util.ArrayList, java.util.List" language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>History</title>
</head>
<body>
<h1>Witaj na Stronie 4 - historia</h1>
	<p>Odwiedzales:</p>
	<%
	List<String> historyList = (List<String>)session.getAttribute("historyList");
	int counter = (Integer)session.getAttribute("counter");
	%>
	<ul>
    <c:forEach var="print" items="<%= historyList %>">
    	<li><c:out value="${print }"/></li>
    </c:forEach>
    </ul>
    <c:out value="licznik odwiedzin: "/>
    <c:out value="${counter }"/><br>
    <a href="/Homework3/index61.jsp?clear=true">Wyczysc historie</a>
</body>
</html>
<% //https://stackoverflow.com/questions/41456615/what-is-the-purpose-of-jstls-curl-tag %>
