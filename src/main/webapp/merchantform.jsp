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
<form:form  action="savemerchant" modelAttribute="merchantobj">
enter the name:<form:input path="name"/>
enter the mobilenumber: <form:input path="mobilenumber"/>
enter the email: <form:input path="email"/>
enter the password: <form:input path="password"/>
<input type="submit">
</form:form>
</body>
</html>