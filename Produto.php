<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8"/>
	<title>Produtos</title>
	<link rel="stylesheet" type="text/css" href="css/produto.css">
	<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
	<header>
		<nav class="nav-top">
			<a class="logo" href="home.html">
				<img class="logo-img" src="IMG/logo.png" href="home.html"></img>
				<h1 class="logo-nome">MangaStore</h1>
			</a>
			<ul class="nav-list">
			  <li><a href="home.html">Início</a></li>
			  <li><a href="sobre.html">Sobre</a></li>
			  <li><a href="contato.html">Contatos</a></li>
			  <li><a href="servico.html">Serviços</a></li>
			  <li><a href="produto.php">Produtos</a></li>
			</ul>
			<div class="search-box">
				<form class="form" action="" method="post">
		            <input class="search-txt" type="text" name="txtpesquisa" placeholder="Pesquisar">
		            <button class="search-btn" type="submit" name="btnpesquisa" id="excluir">
		            	<a href="" class="btn-effect"><i class="fas fa-search"></i></a>
		            </button>
	            </form>
        	</div>
		</nav>
	</header>
	<main>
		<div class="conteudo">
			<h1 class="titulo">Volumes Disponíveis:</h1>
			<div class="produtos">
				<?php
					include("conectar.php");
					$sql = "SELECT * FROM tb_produto";
					$dados = mysqli_query($conexao, $sql);
					$total = mysqli_num_rows($dados);
					while($resultado = mysqli_fetch_array($dados))
					{
						echo "<div class='produto' name='produto' id='produto'>";
							echo "<img class='capa' src='IMG/".$resultado['img_produto'].".jpg'>";
							echo " <h1>".$resultado['nm_produto']."</h1>";
							echo "<h2>Vol. ".$resultado['qt_volume']."</h2>";
							echo " <p>R$".$resultado['vl_produto'].",99</p>";
						echo "</div>";
					}
					mysqli_close($conexao);

					if(isset($_POST['btnpesquisa']))
					{
						if(!empty($_POST['txtpesquisa']))
						{
							echo "<script>";
							echo "$('.produto').empty();";
							echo "</script>";
							include("conectar.php");
							$nome = $_POST['txtpesquisa'];
							$sql = "SELECT * FROM tb_produto WHERE nm_produto LIKE '$nome%' ORDER BY nm_produto";
							$dados = mysqli_query($conexao, $sql);
							$total = mysqli_num_rows($dados);
							while($resultado = mysqli_fetch_array($dados))
							{
								echo "<div class='produto' name='produto' id='produto'>";
									echo "<img class='capa' src='IMG/".$resultado['img_produto'].".jpg'>";
									echo " <h1>".$resultado['nm_produto']."</h1>";
									echo "<h2>Vol. ".$resultado['qt_volume']."</h2>";
									echo " <p>R$".$resultado['vl_produto'].",99</p>";
								echo "</div>";
							}
							mysqli_close($conexao);
						}
					}
				?>
			</div>
		</div>
	</main>
	<footer>
		<nav class="nav-bottom">
			Todos direitos reservados a João Gorgonio.
		</nav>
	</footer>
</body>
</html>