<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Form</title>
<style type="text/css">
	.body{
		background: green;
		
		text-align: center;
	}
	.form{
		border-style:groove;
		border-width:10px;
		margin:  0 auto;
		text-align: center;
		height: 600px;
		width: 500px;
		background: #111;
	}
	.form form{
		margin: 20px;
		color:white;
	}
	
	.form form input:focus ,textarea:focus{
		border: thin;
		border-style:solid;
		border-color: red;
			
	}
	
	.form form input ,select,option, textarea{
		border: none;
		
		border-bottom: 1px solid #fff;
		background: transparent;
		outline: none;
		color: #fff;
		font-size: 15px;
		 width: 80%;
		margin-left: 50px;
		padding-top: 10px;
	}
	
	.form form select,option{
		border: none;
		
		border-bottom: 1px solid #fff;
		background: #111;
		outline: none;
		color: #fff;
		font-size: 15px;
		 width: 80%;
		margin-left: 50px;
		padding-top: 10px;
	}
	
	.form td{
		padding : 10px;
	}
	
	.form input[type = "submit"]{
		border-radius:10px;
		padding:5px;
		background:green;
		color: $fff;
	}
	
	.form input[type = "submit"]:hover{
		padding:5px;
		border:medium;
		border-style: solid;
		background:green;
		border-color:yellow;
		color: #111;
		border-top: 1px solid red;
		border-bottom: 1px solid red;
		cursor: pointer;
	}
	.error{
		color:red;
	}
	#star{
		color:orange;	
	}
	
	
</style>
</head>
<body class = "body">
<h1>Registration Form</h1>
	<div class="form">
		
		<form:form action="reservationDetails" modelAttribute="form">
		<table>
		<tr> 
			<td>Name <span id ="star">*</span> :</td>
			<td><form:input path="name" />
				<form:errors path="name" cssClass="error"/></td>
		</tr>
		<tr> 
			<td>Email <span id ="star">*</span> :</td>
			<td><form:input path="email"/>
				<form:errors path="email" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Room Type :</td>
			<td><form:select path="roomtype"  >
					<form:options items="${form.rooms }" />
				</form:select>
			</td>
		</tr>
		<tr>
			<td>Arrival Date <span id ="star">*</span> :<br> <small><span id ="star">"YYYY-MM-DD"</span> </small>  </td>
			<td> <form:input path="arrivaldate"/>
				<form:errors path="arrivaldate" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Departure Date <span id ="star">*</span> :<br> <small><span id ="star">"YYYY-MM-DD"</span></small> </td>
			<td> <form:input path="departuredate"/>
				<form:errors path="departuredate" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Number of Guest :</td>
			<td><form:input path="numberofguests"/></td>
		</tr>
		
		<tr>
			<td>Train Number <span id ="star">*</span> :</td>
			<td><form:input path="trainnumber"/>
				<form:errors path="trainnumber" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Special Requests : </td>
			<td><form:textarea path="specialrequests"/></td>	
		</tr>
		</table>
		<br>
		<input type = "submit" value = "Submit">
		
		<%-- Name : <form:input path="name"/>
		<br><br>
		Email : <form:input path="email"/>
		<br><br>
		Room Type : <form:select path="roomtype" >
			<form:options items="${form.rooms }"/>
		</form:select>
		<br><br>
		Arrival Date : <form:input path="arrivaldate"/>
		<br><br>
		Departure Date : <form:input path="departuredate"/>
		<br><br>
		Number of Guest : <form:input path="numberofguests"/>
		<br><br>
		Free Pickup : <form:radiobutton path="freepickup" value="Yes"/> Yes
		<form:radiobutton path="freepickup" value = "No"/> No
		
		<br><br>
		Train Number : <form:input path="trainnumber"/>
		<br><br>
		
		Special Requests : <form:textarea path="specialrequests"/>
		<br><br> --%>
		
		</form:form>
	</div>
</body>
</html>