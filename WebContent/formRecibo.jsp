<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="Shortcut icon" href="dt.png">
<link rel="stylesheet" type="text/css" href="codigo.css">
<link
	href="https://fonts.googleapis.com/css?family=Allerta+Stencil|Oswald|Francois+One"
	rel="stylesheet">
<style type="text/css">
branco {color: #fff;}

</style>
<title>Novo Recibo</title>
</head>
<body>
	<center>

		<div class="corpo">
			<div class="titulo">Novo Recibo</div>
			<B>${msg}</B>
			<div class="links">
<a href="index.jsp"> Início </a> <branco>•</branco>
<a href="formRecibo.jsp"> Novo Recibo </a> <branco>•</branco>
<a href="Listar.bee"> Recibos </a> <branco>•</branco>
<a href="Usuarios.bee"> Usuários </a>
				 
					
			</div>

			<form action="GerarRecibo.bee" method="POST">
				<br>
				<br>
				<table align="center">
				<tr>
						
						<td>Login do vendedor:</td>
						<td><input type="text" name="login" /><br></td>
					</tr>
					<tr>
						
						<td>Nome do comprador:</td>
						<td><input type="text" name="nome" /><br></td>
					</tr>
					<tr>
						<td>Valor:</td>
						<td><input type="text" name="valor" /><br></td>
					</tr>
					<tr>
						<td>Produto:</td>
						<td><input type="text" name="produto" /><br></td>
					<tr>
						<td></td>
						<td><input type="submit" value="Gerar" width="30px"></td>
					</tr>	
				</table>
				<br>
				<br>
		</div>
	</center>
</body>
</html>