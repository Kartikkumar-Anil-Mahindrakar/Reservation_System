<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Form</title>
<style type="text/css">
	body{
		background: aqua;
		text-align: center;
	}
	table{
		border-color: red;
		background: green;
	}
	table td {
		padding: 10px;
		background: silver;
	}
	table th{
		width: 10%;
	}
	table td:hover{
		background: lime;
		
	}
	table thead {
		background: fuchsia;
	}
	 a:hover{
		color: red;
	}
</style>
</head>
<body >
	<h1> Registered Forms</h1>
	<div class="details">
		<table border="3" >
		<thead>
			<th>Name</th>
			<th>Email</th>
			<th>Room Type</th>
			<th>Arrival Date </th>
			<th>Departure Date </th>
			<th>Number of Guest</th>
			<th>Train Number </th>
			<th>Special Requests </th>
		</thead>
		<c:forEach var="temp" items="${formset}">
			<tr>
				<td>${temp.name }</td>
				<td>${temp.email }</td>
				<td>${temp.roomtype }</td>
				<td>${temp.arrivaldate}</td>
				<td>${temp.departuredate }</td>
				<td>${temp.numberofguests }</td>
				<td>${temp.trainnumber }</td>
				<td>${temp.specialrequests }</td>
			</tr>
		</c:forEach>
	</table>
	
	<a href="homepage"><h3>HomePage</h3></a>
	</div>
	
</body>
</html>