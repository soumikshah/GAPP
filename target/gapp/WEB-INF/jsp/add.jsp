<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="now" class="java.util.Date" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration Form</title>
</head>
<body>
	<form action="add.html" method="post">
		<h1>User Details</h1>
		<br />
		<div class="form-group">
			<label for="LastName"><font color="red">*</font> Last Name</label> <input type="lastName"
				class="form-control" id="lastName" name="lastname" placeholder="Last Name" required>
		</div>
		<br/>
		<div class="form-group">
			<label for="FirstName"><font color="red">*</font> First Name</label> <input type="text"
				class="form-control" id="FirstName" name="firstname" placeholder="First Name" required>
		</div>
		<br/>


		<div class="form-group">
			<label for="InputEmail"><font color="red">*</font> Email address</label> <input type="email"
				class="form-control" id="InputEmai" name="email" placeholder="jDe@xyz.xyz" required>
		</div>
		<br/>
		<div class="form-group">
			<label for="password1"><font color="red">*</font> Password</label> <input type="password"
				class="form-control" id="password" name="password" placeholder="Password" required>
		</div>
		<br/>

		<br/>
		<c:forEach items="${usertypes}" var="user">
		<input type="text" id="usertype" name="usertype" value="${user.name}">
		</c:forEach>
		<input type="submit" name="add" value="Add" class="btn btn-default">
	</form>
</body>
</html>