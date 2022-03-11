<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<%@ include file ="menu.jsp"%>
<%
HttpSession sesion = request.getSession();
String valorSesion = (String) sesion.getAttribute("nombreUser");
out.println(valorSesion);
%>
<br />
<%
String valorRol = (String) sesion.getAttribute("rol");
out.println(valorRol);
%>
<center> <h3>Ventas</h3> </center>
</body>
</html>