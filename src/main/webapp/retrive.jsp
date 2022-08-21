<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.example.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
InsertDAO dao=new InsertDAO();
List<Employee> e=dao.get();
%>
<table  border="1">
<tr><th>id</th><th>name</th></tr>
<%for(Employee ee:e){ %>
<tr><td><%=ee.getId()%></td><td><%=ee.getName() %></td></tr>
<%} %>
</table>



</body>
</html>
