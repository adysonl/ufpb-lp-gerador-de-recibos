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
<title>Usuários</title>
</head>
<body>
	<center>

		<div class="corpo">
			<div class="titulo">Usuários</div>
			<B>${msg}</B>
			<div class="links">
<a href="index.jsp"> Início </a> <branco>•</branco>
<a href="formRecibo.jsp"> Novo Recibo </a> <branco>•</branco>
<a href="Listar.bee"> Recibos </a> <branco>•</branco>
<a href="Usuarios.bee"> Usuários </a> 

			</div>


			<form action="CadastrarUsuario.bee" method="POST">
				<br> <br>
				<table align="center">
					<tr>
						<td>Nome:</td>
						<td><input type="text" name="nome" /><br></td>
					</tr>
					<tr>
						<td>CPF:</td>
						<td><input type="text" name="cpf" value="000.000.000-00" /><br></td>
					</tr>
					<tr>
						<td>RG:</td>
						<td><input type="text" name="rg" /><br></td>
					</tr>
					<tr>
						<td>Endereço:</td>
						<td><input type="text" name="endereco" /><br></td>
					</tr>
					<tr>
						<td>Login:</td>
						<td><input type="text" name="login" /><br></td>
					</tr>
					<tr>
						<td>Senha:</td>
						<td><input type="password" name="senha" /><br></td>
					<tr>
						<td></td>
						<td><input type="submit" value="Cadastrar" width="30px"></td>
					</tr>
				</table>



				<br> <br>

				<table border="4" cellspacing="1" align="center">
					<tr>
						<td>Nome</td>
						<td>Login</td>
						<td>Endereço</td>
						<td></td><td></td>
						<c:forEach items="${usuarios}" var="usuario">
							<tr>
								<td>${usuario.nome}</td>
								<td>${usuario.login}</td>
								<td>${usuario.endereco}</td>
								<td><a href="DeletarUsuario.bee?login=${usuario.login}">
								<img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-trash-a-128.png"
										width="25px" /></a></td>
								<td><a href="editar.jsp?login=${usuario.login}"><img
										src="http://download.seaicons.com/icons/icons8/windows-8/512/Editing-Edit-icon.png"
										width="22px" /></a></td>
						</c:forEach>
					</tr>

				</table>
				<br> <br>
				<br>
		</div>
	</center>
</body>
</html>