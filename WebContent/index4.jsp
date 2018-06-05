<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.Date" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% Date actualDate = new Date(); %>
	<fmt:formatDate  pattern="yyyy-MM-dd" value="<%= actualDate %>"/><br/><br/>

	<fmt:setLocale value="pl_PL"/>
	<c:set var="amount" value="99.14115" />
	<fmt:formatNumber value="${amount}" maxFractionDigits="3"/><br/>
	<fmt:formatNumber value="${amount}" maxFractionDigits="5"/><br/>
	<fmt:formatNumber value="${amount}" type="percent"/><br/>
	<fmt:formatNumber value="${amount}" type="currency"/><br/>
</body>
</html>