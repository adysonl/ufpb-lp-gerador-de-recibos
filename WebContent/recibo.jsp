<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="https://fonts.googleapis.com/css?family=Allerta+Stencil|Oswald|Francois+One"
	rel="stylesheet">
	<link rel="Shortcut icon" href="dt.png">
<style type="text/css">
body {
	background:
		url('background.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
}

.corpo {
	background-color: rgba(255, 255, 255, 0.90);
	font-size: 24px;
	width: 90%;
	height: 90%;
	font-family: ronda;
	margin: 3%;
	border: solid #000 4px;
	padding: 0px;
	font-family: Oswald;
}

.links {
	background: black;
	padding: 10px;
	font-size: 24px;
	width: 99%;
	float: right;
	text-transform: uppercase;
	margin-right: -4px;
	font-family: 'Oswald', sans-serif;
}

.links a {
	text-decoration: none;
	color: #fff;
	width: 30%;
}

.links a:hover {
	color: gray;
	color:;
	text-shadow: 2px 2px 15px #fff;
}

.titulo {
	font-family: 'Francois One', sans-serif;
	font-size: 35px;
	text-transform: uppercase;
}
branco {color: #fff;}

</style>
<title>Recibo</title>
</head>
<body>
	<center>

		<div class="corpo">
			<div class="titulo" style="font-size: 30 px;"><br>
			<div align="right"><div style="border: solid #000 2px; padding:2px; width: 300px; align: right; margin-right: 30px">Número: ${recibo.cod} </div>   </div><br>
				Recibo_____________R$ ${recibo.valor}</div>
			<br> <br> 
			<div style="width: 80%; padding: 10%;">
				Eu, ${recibo.proprietario.nome}, inscrito no CPF ${recibo.proprietario.cpf}
				e no RG ${recibo.proprietario.rg}, brasileiro, residente à ${recibo.proprietario.endereco}, recebi de <b>${recibo.nome}, a
					importância de R$ ${recibo.valor}, referente ao pagamento de
					${recibo.produto }. <br> <br> <br>
					
					<div style="text-align: right">Rio Tinto, ${recibo.data }</div>
					<br> <br> <br>

					________________________________________ 
						<br> 	${recibo.proprietario.nome} <br>
								${recibo.proprietario.cpf}<br><br>
			</div>
		</div>
	</center>
</body>
</html>