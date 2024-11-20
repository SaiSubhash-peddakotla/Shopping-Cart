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
<form:form modelAttribute="productobj" action="saveproduct">
enter brand: <form:input path="brand"/><br>
enter model:<form:input path="model"/><br>
enter the category:<form:input path="category"/><br>
enter the price:<form:input path="price"/><br>
enter the stock:<form:input path="stock"/><br>
<input type="submit">
</form:form>
</body>
</html>