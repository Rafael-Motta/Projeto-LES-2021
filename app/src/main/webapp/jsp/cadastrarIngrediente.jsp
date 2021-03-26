<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>cadastrar ingrediente</title>
	<script>
		function confirmacaoCI(){
			alert("Ingrediente cadastrado com sucesso!");
		}
	</script>
</head>
<body>
	<div>
		<br/><br/><br/><br/><br/>
		Ingrediente: <input name="ingrediente"/>
		<div>
  			<br/>
  			<p>Descrição:</p>
  			<textarea style="resize: none" id="descr" name="descr" rows="7" cols="40"></textarea>
  		</div>
  		<br/><br/>
		<form action="ci.action" method="get">
			<input type="submit" onclick="confirmacaoCI()"/>
		</form>
		<br/><br/><br/><br/><br/><br/><br/>
		<form action="/app" method="get">
			<button type="submit"><p>Voltar</p></buttom>
		</form>
	</div>
</body>
</html>