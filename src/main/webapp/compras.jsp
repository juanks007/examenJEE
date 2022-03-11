<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="com.examen.modelo.*" %>
<%@ page import="java.util.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="func" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<center> <h3>Compras</h3> </center>
<center>
		<form action="LoginServlet" method="post">
			<table>
				<tr>
					<td>NIT:</td>
					<td><input type="text" name="nit" /></td>
				</tr>
				<tr>
					<td>Apellido:</td>
					<td><input type="text" name="apellido" /></td>
				</tr>
				<tr>
					<td colspan="2"><br>
					<center>
							<input type="submit">
					</center></td>

				</tr>
			</table>
			<p></p>
			
			
			
		</form>
	</center>
	<%
				List<Productos> listaProd = new LinkedList<Productos>();
				listaProd.add(new Productos(1,"Cocacola 2 litros", 8, 20 ));						
				listaProd.add(new Productos(3,"Leche Pil 1 litros", 5, 10 ));
				listaProd.add(new Productos(5,"Cocoa", 10, 30 ));
				listaProd.add(new Productos(4,"Cereal", 18, 10 ));
				listaProd.add(new Productos(6,"Pan Molde", 11, 10 ));
				listaProd.add(new Productos(12,"Helado 1 kilo", 25, 20 ));
				listaProd.add(new Productos(8,"pollo entero 2 kilos", 28, 7 ));
				listaProd.add(new Productos(9,"Mantequilla", 22, 12 ));
				listaProd.add(new Productos(7,"Atun", 13, 24 ));
				listaProd.add(new Productos(10,"Salsa de tomates", 8, 10 ));
				listaProd.add(new Productos(11,"Mayonesa", 8, 25 ));

			%>
	<h3>Lista Productos</h3>
	<table border="1" width="600">
				<tr bgcolor="skyblue">
					<th>Id</th>
					<th>Nombre</th>
					<th>Costo</th>
					<th>Cantidad</th>
					<th>agregar compra</th>
				</tr>
				
						<%
							for(Productos p : listaProd){
						%>
							<tr>
								<td>
									<%=p.getId() %>
								</td>
								<td>
									<%=p.getNombre()%>
								</td>
								<td>
									<%=p.getPrecio() %>
								</td>
								<td>
									<%=p.getCantidad() %>
								</td>
								<td>
									<center><input type="button" value="Agregar"/></center>
								</td>
							</tr>
						<%
							}
						%>
			</table>
</body>
</html>