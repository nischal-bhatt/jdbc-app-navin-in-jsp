<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <!--  import package -->
     <!--  load and register the driver -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      101 <br>
      Navin <br>
        
      88   <br>
      
      <!--  we want to fetch this data from the database -->
      
      <%
         String url = "Jdbc:mysql://localhost:3306/neon";
         String username = "root";
         String password = "root";
         String sql = "select * from student where rollno = 1";
         Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection(url,username,password);
      Statement st = con.createStatement();
      
         ResultSet rs = st.executeQuery(sql);
         
         rs.next();
         
      %>
     
       Rollno : <%= rs.getString(1)  %>
       Nama apa : <%= rs.getString(3)  %>
       Marks apa : <%= rs.getString(2)  %>
</body>
</html>



<!-- 

 use neon;       
                          
                            create table student(
     rollno int,
	 marks int,
	name varchar(30)
   
);

insert into student values (2,100,'nish');

select * from student;



 -->