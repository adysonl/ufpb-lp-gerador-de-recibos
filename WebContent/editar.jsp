<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="Shortcut icon" href="dt.png">
 <link rel="stylesheet" type="text/css" href="codigo.css">
 <link href="https://fonts.googleapis.com/css?family=Allerta+Stencil|Oswald|Amiko|Francois+One" rel="stylesheet">
<style type="text/css">

</style>

<title>Cadastrar</title>
</head>
<body><center>
<div class="corpo">
<div class="titulo"> Editar </div>


<div class="links">
<a href="index.jsp"> Início </a> <branco>•</branco>
<a href="formRecibo.jsp"> Novo Recibo </a> <branco>•</branco>
<a href="Listar.bee"> Recibos </a> <branco>•</branco>
<a href="Usuarios.bee"> Usuários </a> <branco>•</branco>
<a href="login.jsp"> Login </a>
</div>
<br><B>${msg}</B><br>
<br><br><br>
			<form action="EditarUsuario.bee" method="POST">
			<input type="hidden" name="login" value="<%= request.getParameter("login") %>">
			<table align="center">
	<tr>	
		<td> Nome: </td>
			 <td><input type="text" name="nnome"/><br></td> </tr>
	<tr>
		<td> RG: </td>
			 <td><input type="text" name="nrg"/><br></td> </tr>
	<tr>
		<td>CPF: </td>
			 <td><input type="text" name="ncpf"/><br></td> </tr>
	<tr>
		<td>Endereço: </td>
			 <td><input type="text" name="nendereco"/><br></td> </tr>
	<tr>
		<td>Novo login: </td>
			 <td><input type="text" name="nlogin"/><br></td> </tr>
	<tr>
		<td>Nova senha:</td> 
			<td><input type="password" name="nsenha"   /><br></td></tr>
	<tr>
		<td></td>
		<td><input type="submit" value="Editar" width="30px"></td>
	</tr>
	</table><br><br>

</body>
</html>