<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form action="savecustomer" modelAttribute="customerobj">
enter the name: <form:input path="name"/> <br>
enter the address:<form:input path="address"/> <br>
enter the mobilenumber:<form:input path="mobilenumber"/> <br>
enter the email:<form:input path="email"/> <br>
enter the password:<form:input path="password"/> <br>
<input type="submit">
</form:form>
</body>
</html>