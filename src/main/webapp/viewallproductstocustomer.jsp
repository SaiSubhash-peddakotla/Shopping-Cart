<%@page import="com.jsp.shoppingcart.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<Product> products = (List<Product>) request.getAttribute("productslist");
	%>
	<h1><a href="fetchitemsfromcart">View Cart</a></h1>
	<table cellpadding="20px" border="2">
		<th>Brand</th>
		<th>Category</th>
		<th>Model</th>
		<th>Price</th>
		<th>Add To Cart</th>


		<%
		for(Product p : products) {
		%>
		<tr>
			<td><%=p.getBrand()%></td>
			<td><%=p.getCategory()%></td>
			<td><%=p.getModel()%></td>
			<td><%=p.getPrice()%></td>
			<td><a href="additem?id=<%=p.getId()%>">Add</a></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>