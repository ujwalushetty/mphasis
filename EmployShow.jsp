<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <sql:setDataSource var="conn"
 	user="prasanna" 
 	password="prasanna"
 	driver="oracle.jdbc.driver.OracleDriver"
 	url="jdbc:oracle:thin:@localhost:1521:orcl"
 />
 <sql:query var="employQuery" dataSource="${conn}">
 	select * from Employ
 </sql:query>
 <c:forEach var="e" items="${employQuery.rows}">
 	Employ No :
 	<c:out value="${e.empno}" /> <br/><Br/>
 	Employ Name : 
 	<c:out value="${e.name}" /> <Br/><br/>
 	Gender : 
 	<c:out value="${e.gender}" /> <br/><br/> 
 	Department : 
 	<c:out value="${e.dept}" /> <br/><Br/> 
 	Designation : 
 	<c:out value="${e.desig}" /> <Br/><br/>
 	Basic : 
 	<c:out value="${e.basic}" /> <br/><hr/>
 </c:forEach>
</body>
</html>