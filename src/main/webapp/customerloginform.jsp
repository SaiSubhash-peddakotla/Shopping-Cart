<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style=" color:red;font-size:22px;">${msg}</h1>
<form action="customerloginvalidation" method="post">
<h3>Enter the email:<input type="email" name="email"></h1><br>
enter the pasword:<input type="password" name="password"><br>
<input type="submit">
</form>
</body>
</html>