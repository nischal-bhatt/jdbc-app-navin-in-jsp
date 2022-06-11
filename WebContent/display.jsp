<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="nish" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="nishysql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="green">

    hi im here
    <!--  
    <%
       // String name = request.getAttribute("label").toString();
        //out.println(name);
    %>
    -->
    hi
    ${student} <br>
    
    
    <nish:out value = "hi jim"/>
  
  
    <nish:forEach items="${students }" var = "s">
      
      ${s.name } <br>
    
    </nish:forEach>
    
    <nishysql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/neon" user="root" password="root"/>
    <nishysql:query var="rs" dataSource="${db}"> select * from student </nishysql:query>
    
    <nish:forEach items="${rs.rows}" var="row">
      <nish:out value = "${row.marks}"/><br>
    </nish:forEach>
    
    
</body>
</html>