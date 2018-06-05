<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page  import="java.util.ArrayList, java.util.List" language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<html>
<head>
<title>Zadanie 6_1</title>
</head>
<body>
	<h1>Witaj na Stronie 1</h1>
	<p>ponizej sa linki do poszczegolnych stron:</p>
	<a href="<c:url value="/index62.jsp"/>">Strona 2</a><br>	
	<a href="<c:url value="/index63.jsp"/>">Strona 3</a><br>	
	<a href="<c:url value="/history.jsp"/>">Historia</a><br>
	<%
	List<String> historyList = new ArrayList<>();	
		if(session.getAttribute("counter") == null) {
			session.setAttribute("counter", 1);
		} else {
			int counter = (int)session.getAttribute("counter");
			session.setAttribute("counter", counter+1);
		}
		if(session.getAttribute("historyList") == null) {
			historyList.add("Strona 1");
			session.setAttribute("historyList", historyList);
		} else {
			historyList = (List<String>)session.getAttribute("historyList");
			historyList.add("Strona 1");
			session.setAttribute("historyList", historyList);
		}
		if(request.getParameter("clear") != null) {
			if (request.getParameter("clear").equals("true")) {
			historyList.clear();
			session.setAttribute("counter", 0);
			request.setAttribute("msg", "Historia zostala wyczyszczona!");
			request.getRequestDispatcher("/index1.jsp").forward(request, response);
			}
		}
	%>
	
</body>
</html>
<% //https://stackoverflow.com/questions/41456615/what-is-the-purpose-of-jstls-curl-tag %>
<% // https://stackoverflow.com/questions/22235689/jstl-curl-not-working-with-form-action jak w c:url byl zdefiniowany var to link nie dzialal. Moze wlasnie dlatego%>
<% //<a href="<c:url value="/index64.jsp" var="link4"/>">Strona 44</a><br>
   //<c:out value="${link4}"/><br><br>
%>