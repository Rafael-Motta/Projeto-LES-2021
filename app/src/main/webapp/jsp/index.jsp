<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Menu</title>
</head>
<body>
	<div>
		<br/><br/><br/>
		<form action="cr.action" method="get">
			<button type="submit" style="background-color:red"><p></p>Cadastrar Receita</button>
			<br/><br/>
		</form>
	</div>
	<div>
		<form action="pr.action" method="get">
			<button type="submit" style="background-color:red"><p></p>Pesquisar Receita</button>
			<br/><br/>
		</form>
	</div>
	<div>
		<form action="ci.action" method="get">
			<button type="submit" style="background-color:yellow"><p></p>Cadastrar Ingrediente</button>
			<br/><br/>
		</form>
	</div>
	<div>
		<form action="pi.action" method="get">
			<button type="submit" style="background-color:yellow"><p></p>Pesquisar Ingrediente</button>
			<br/><br/>
		</form>
	</div>	
</body>
</html>