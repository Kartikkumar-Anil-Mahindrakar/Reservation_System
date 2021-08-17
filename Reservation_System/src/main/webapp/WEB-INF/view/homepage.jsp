<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
	.body{
		background: yellow;
	}
	.body h1{
		color: black ;
		font-family: serif;
		font-size: 30px;
		font-weight: bold;
		text-align: center;
	}
	.body a:hover{
		color: red;
	}
	.body a{
		color : blue;
		font-size: 20px;
		font-style:italic;
		font-weight: bold;
		text-align: center;
		margin-left: calc(50% - 50px);
	}
</style>
<title>HomePage</title>
</head>
<body class="body">
	<h1>Home Page</h1>
	<a href="reservationForm">Reservation Form </a>
	<br><br>
	<a href="showRegisteredForm">Show Registered Forms </a>
</body>
</html> 