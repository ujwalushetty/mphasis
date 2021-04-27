<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="eno" value="${param.eno}" />
<c:choose>
	<c:when test="${eno==1}">
		<c:out value="HI I am Pavithra..." />
	</c:when>
		<c:when test="${eno==2}">
		<c:out value="HI I am Nilesh..." />
	</c:when>
		<c:when test="${eno==3}">
		<c:out value="HI I am Hari Bhanu..." />
	</c:when>
	<c:otherwise>
		<c:out value="Invalid Value..." />
	</c:otherwise>
</c:choose>
</body>
</html>