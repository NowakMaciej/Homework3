<%@ taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% String[] input = request.getParameterValues("numbers");%>
	<c:forEach begin="2" end="10" step="2" varStatus="loop">
		<c:out value="${loop.index}"/><br> <% // sprobuj uzyc current %>
	</c:forEach>
</body>
</html>