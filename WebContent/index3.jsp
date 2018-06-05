<%@ taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%!
      String[] names = { "A","B", "C", "D" };
    %>
    <ul>
    <c:forEach var="print" items="<%= names %>">
    	<li><c:out value="${print }"/></li>
    </c:forEach>
    </ul>
</body>
</html>