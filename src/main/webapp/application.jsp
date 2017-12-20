<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.logging.Logger" %>
<%@ page isELIgnored="false" %>
<html>
<% Logger logger=Logger.getLogger(this.getClass().getName());%>

<c:set var="loc" value="en_US" />


<c:if test="${!(empty param.locale)}">
	<c:set var="loc" value="${param.locale}" />
	<%  
 logger.info("in if ::"+pageContext.findAttribute("loc"));
 %>
</c:if>
 <%  
 logger.info(""+pageContext.findAttribute("loc"));
 %>

<fmt:setLocale value="${loc}" />
 <% System.out.println(""+pageContext.findAttribute("loc")); %>
 
<fmt:bundle basename="app">
	<head>
          <title><fmt:message key="newTitle" /></title>
	</head>
	<body>
		<h1>
			<fmt:message key="newTitle" />
		</h1>
		</br>

		<c:url value="procform.jsp" var="formActionURL" />

		<form action="${formActionURL}" method="post">
			<table>
				<tr>
					<td><fmt:message key="lastName" /></td>
					<td><input type="hidden" name="locale" value="${loc}" /> <input
						type="text" name="lastname" size="40" /></td>
				</tr>

				<tr>
					<td><fmt:message key="firstName" /></td>
					<td><input type="text" name="firstname" size="40" /></td>
				</tr>

				<tr>
					<td><fmt:message key="postalCode" /></td>
					<td><input type="text" name="postcode" size="40" /></td>
				</tr>

				<tr>
					<td><fmt:message key="password" /></td>
					<td><input type="password" name="pass" size="40" /></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="<fmt:message key='submitForm'/>" /></td>
				</tr>

			</table>

		</form>

	</body>
</fmt:bundle>
</html>