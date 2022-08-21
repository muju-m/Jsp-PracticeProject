<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.example.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String name=request.getParameter("name");
Employee e = new Employee();
e.setName(name);

InsertDAO dao=new InsertDAO();
int res=dao.insert(e);
if(res>0) {
	out.print("insertion done");
}


%>

<form action="retrive.jsp" method="post">
<input type="submit" value="getdetails">
</form>
</body>
</html>
