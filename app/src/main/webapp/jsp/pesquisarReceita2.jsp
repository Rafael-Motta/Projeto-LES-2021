<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>pesquisar receitas</title>
</head>
<body onload="mostraI()">
	<div>
		<br/><br/>
		<p>Pesquise a receita:</p>
		<form action="ppr.action2">
			<p> Nome: <input type="text" id="nomeP"> </p>
			<p> e / ou  </p>
			<p> Ingrediente <input type="text" id="ingredienteP"> </p>
			<button type="submit">Pesquisar</button>
		</form>
	</div>
	<div>
		<br/><br/>
		<form action="/app" method="get">
			<button type="submit"><p>Voltar</p></button>
		</form>
	</div>
	<br/><br/>
	<script type="text/javascript">
		var tb = '${tb}'
		var tbb = parseInt(tb);
		var test = document.getElementById('test');
		function mostraI() {
			
			var a = document.createElement("table");
			document.body.appendChild(a);
			
			var b = document.createElement("tr");
			document.body.appendChild(b);
			
			var c = document.createElement("th");
			c.textContent = "ID";
			document.body.appendChild(c);
			
			var d = document.createElement("th");
			d.textContent = "Nome";
			document.body.appendChild(d);
			
			var e = document.createElement("th");
			e.textContent = "Ingrediente(s) Principal";
			document.body.appendChild(e);
			
			var f = document.createElement("tr");
			document.body.appendChild(f);
			
			for(var i=0; i<tb; i++){
				var x = document.createElement("td");
				x.textContent = '${idP}';
				document.body.appendChild(x);
				var y = document.createElement("td");
				y.textContent = '${nomeP}';
				document.body.appendChild(y);
				var z = document.createElement("td");
				z.textContent = '${ingrP}';
				document.body.appendChild(z);
				var w = document.createElement("tr");
				document.body.appendChild(w);
			}
		}		
	</script>
</body>
</html>