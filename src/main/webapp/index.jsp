<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<h1>HOLAAAA</h1>
	<center>
		<form action="LoginServlet" method="post">
			<table>
				<tr>
					<td>Login:</td>
					<td><input type="text" name="n1" /></td>
				</tr>
				<tr>
					<td>Contraseña:</td>
					<td><input type="password" name="n2" /></td>
				</tr>
				<tr>
					<td colspan="2"><br>
					<center>
							<input type="submit">
					</center></td>

				</tr>
			</table>

		</form>
	</center>
</body>
</html>