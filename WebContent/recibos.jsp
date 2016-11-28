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

branco {color: #fff;}

</style>

<title>Login</title>
</head>
<body><center>
<div class="corpo">
<div class="titulo"> Recibos </div>


<div class="links">
<a href="index.jsp"> Início </a> <branco>•</branco>
<a href="formRecibo.jsp"> Novo Recibo </a> <branco>•</branco>
<a href="Listar.bee"> Recibos </a> <branco>•</branco>
<a href="Usuarios.bee"> Usuários </a>
</div>
<br><B>${msg}</B><br>
		<br><br>

	<table border="4" cellspacing="1" align="center">
	<tr>
	<td>Código</td>
	<td>Produto</td>
	<td>Data</td>
	<td>Valor </td>
	<td>
	</td></tr>
	<c:forEach items="${recibos}" var="recibo">
	<tr>
	 <td> ${recibo.cod}</td>
	 <td>${recibo.produto } </td>
	 <td> ${recibo.data}</td>
	 <td>${recibo.valor } </td>
	 <td>
	 <a  href="DeletarRecibo.bee?cod=${recibo.cod}"><img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-trash-a-128.png" width="25px"/></a></td>
	<td>
	 <a  href="MostrarRecibo.bee?cod=${recibo.cod}"><img src="http://icon-icons.com/icons2/569/PNG/512/two-black-paper-sheets-symbol_icon-icons.com_54447.png" width="21px"/></a></td>
	
	</tr>
	</c:forEach>
	
	</table>
<br><br>
</body>
</html>