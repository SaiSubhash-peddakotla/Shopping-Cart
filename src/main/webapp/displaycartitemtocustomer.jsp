<%@page import="java.util.List"%>
<%@page import="com.jsp.shoppingcart.dto.Item"%>
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
	List<Item> items = (List<Item>) request.getAttribute("itemslist");
	double totalprice = (double) request.getAttribute("totalprice");
	%>

	<table cellpadding="20px" border="1">
		<th>Brand</th>
		<th>Model</th>
		<th>Category</th>
		<th>Price</th>
		<th>Quantity</th>

		<%
		for (Item i : items) {
		%>
		<tr>
			<td><%=i.getBrand()%></td>
			<td><%=i.getModel()%></td>
			<td><%=i.getCategory()%></td>
			<td><%=i.getPrice()%></td>
			<td><%=i.getQuantity()%></td>
		</tr>
		<%
		}
		%>

	</table>
	<h2>
		Total price : <%=totalprice%></h2>
	<h3>
		<a href="addorder">Buy Now</a>
	</h3>
</body>
</html>