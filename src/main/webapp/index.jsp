<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<title>Select Language</title>
</head>
<body>
	<h1>Please select language:</h1>
	<c:url value="application.jsp" var="engURL">
		<c:param name="locale" value="en_US" />
	</c:url>

	<a href="${engURL}"> English </a>
	<br />
	<br />
	<c:url value="application.jsp" var="chineseURL">
		<c:param name="locale" value="zh_HK" />
	</c:url>

	<a href="${chineseURL}"> Chinese </a>
	<br />
	<br />
	<c:url value="application.jsp" var="frenchURL">
		<c:param name="locale" value="fr_FR" />
	</c:url>

	<a href="${frenchURL}"> french </a>
</body>
</html>

