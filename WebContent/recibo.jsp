<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link
	href="https://fonts.googleapis.com/css?family=Allerta+Stencil|Oswald"
	rel="stylesheet">
<style type="text/css">
body {
	background:
		url('https://pt.best-wallpaper.net/wallpaper/1366x768/1309/Chicago-Illinois-USA-city-night-skyscraper-buildings-river-lights_1366x768.jpg');
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
	font-family: 'Allerta Stencil', cursive;
	font-size: 35px;
	text-transform: uppercase;
}
</style>
<title>Novo Recibo</title>
</head>
<body>
	<center>

		<div class="corpo">
			<div class="titulo" style="font-size: 30 px;"><br>
			<div align="right"><div style="border: solid #000 2px; padding:2px; width: 300px; align: right; margin-right: 30px">Número: ${recibo.cod} </div>   </div><br>
				Recibo_____________R$ ${recibo.valor}</div>
			<br> <br> 
			<div style="width: 80%; padding: 10%;">
				Eu, Fulano da Silva Dono do Programa, inscrito no CPF 000.000.000-00
				e no RG 000.000, brasileiro, residente à Rua Tal Tal Tal, Bairro Tão
				Tão Distante, Rio Tinto - Pb, recebi de <b>${recibo.nome }, a
					importância de R$ ${recibo.valor}, referente ao pagamento de
					${recibo.produto }. <br> <br> <br>
					
					<div style="text-align: right">Rio Tinto, ${recibo.data }</div>
					<br> <br> <br>

					________________________________________ 
						<br> 	Fulano da Silva Dono do Programa <br><br><br>
			</div>
		</div>
	</center>
</body>
</html>