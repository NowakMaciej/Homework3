<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<c:set var="someName" value="Witaj w coderslab"/>
	<c:set var="key" value="coders"/>
	Zdanie do sprawdzenia:
	<c:out value="${someName}"/><br/>
	klucz:
	<c:out value="${key}"/>
	<c:if test="${fn:contains(someName,key)}">
		<p><c:out value="OK"/></p>
	</c:if>
	<c:if test="${!fn:contains(someName,key)}">
		<p>NOT OK</p>
	</c:if>
</body>
</html>