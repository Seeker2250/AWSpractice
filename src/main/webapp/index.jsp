<%@page import="aws.mysql.sslecture.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 

<sql:query var="rs" dataSource="jdbc/awsDB">
   select deptno, dname, loc 
   from dept
</sql:query>

  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="row" items="${rs.rows}">
    deptno ${row.deptno} - 
    dname ${row.dname} - 
    loc ${row.loc}<br/>
</c:forEach>

</body>
</html>