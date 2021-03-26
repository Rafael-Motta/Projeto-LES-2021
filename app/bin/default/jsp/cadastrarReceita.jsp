<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>cadastrar receita</title>
</head>
<body>
	<br/><br/>
	<div>
		<p>Nome da Receita:</p> <input id="nomeReceita"/><br/><br/>
		
			<p>Ingredientes: &emsp;&emsp;&emsp;&emsp;&emsp;&ensp; Quantidade:</p> <datalist id="ingrelist">
				<option value="Banana"></option>
				<option value="Morango"></option>
				<option value="Ovo"></option>
				<option value="Farinha"></option>
			</datalist>
			<input id="ingrediente" type="text" list="ingrelist"/>
			<input id="quantidade" type="text"/>
		<button onclick="insere()" type="button"> Adicionar </button>
		<button onclick="apaga()" type="button"> Apagar </button>
		<div>
			<p>Ingredientes adicionados: <span id="ingredienteADD"></span></p>
		</div>
		<script type="text/javascript">
			var lista = [];
    		var ingrediente = document.getElementById('ingrediente');
    		var quantidade = document.getElementById('quantidade');
    		var ingredienteADD = document.getElementById('ingredienteADD');

    		function insere() {
    			lista.push("<br/>" + ingrediente.value, quantidade.value);
      			ingredienteADD.innerHTML = lista;
      			ingrediente.value = " ";
      			quantidade.value = " ";
    		}
    		
    		function apaga() {
    			lista.splice(0, lista.length)
    			ingredienteADD.innerHTML = " ";
    		}
    		
    		function confirmacaoCR(){
    			alert("Receita cadastrada com sucesso!");
    		}
  		</script>
  		<div>
  			<br/>
  			<p>Modo de preparo:</p>
  			<textarea style="resize: none" id="preparo" name="preparo" rows="10" cols="70"></textarea>
  		</div>
  		<form action="cr.action" method="get">
  			<button type="submit" onclick="confirmacaoCR()">Enviar</button>
  		</form>
  		<br/><br/><br/>
  		<form action="/app" method="get">
			<button type="submit"><p>Voltar</p></button>
		</form>
	</div>
</body>
</html>