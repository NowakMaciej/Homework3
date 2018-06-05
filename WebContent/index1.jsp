<%@ taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c" %>
<html>
<head>
<title>Zadanie 1</title>
</head>
<body>
	<p>Zadanie 1:</p>
	<c:if test="${not empty param.author}">		
		<c:out value="Autor: ${param.author}"/>
	</c:if>
	<c:if test="${empty param.author}">
		<p>Brak parametru</p>
	</c:if>
	
	<p>Zadanie 6:</p>
	<%
	if(request.getAttribute("msg") != null) {
		String msg = (String)request.getAttribute("msg");
	}
	%>
	${msg}
	<br>
	<a href="/Homework3/index61.jsp">Link startowy do zadania nr 6</a>
</body>
</html>