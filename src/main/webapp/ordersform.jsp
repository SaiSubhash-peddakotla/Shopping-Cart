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
<form:form modelAttribute="ordersobj">
enter the name: <form:input path="name"/>
enter the address:<form:input path="address"/>
enter the mobilenumber:<form:input path="mobilenumber"/>
<input type="submit">
</form:form>
</body>
</html>