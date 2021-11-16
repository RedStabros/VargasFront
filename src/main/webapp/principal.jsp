<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Pagina Principal</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-info">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
				<li class="nav-item">
				<a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Controlador?menu=Principal">Home</a>
				</li>
				<li class="nav-item">
				<a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Controlador?menu=Usuarios&accion=Listar">Usuarios</a>
				</li>
				<li class="nav-item">
				<a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Controlador?menu=Clientes&accion=Listar" target="myFrame">Clientes</a>
				</li>
				<li class="nav-item">
				<a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Controlador?menu=Proveedores&accion=Listar" target="myFrame">Proveedores</a>
				</li>
				<li class="nav-item">
				<a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Controlador?menu=Productos&accion=Listar" target="myFrame">Productos</a>
				</li>
				<li class="nav-item">
				<a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Controlador?menu=Ventas" target="myFrame">Ventas</a>
				</li>
				</ul>
			</div>
			</div>
			<div class="dropdown" >
				<button class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
				${usuario.getNombre_usuario()}
				</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
				
				<a class="dropdown-item" href="#"><img src="img/usuario.png" width="40" alt="40"></a>
				<a class="dropdown-item" href="#">${usuario.getUsuario()}</a>
				<a class="dropdown-item" href="#">${usuario.getEmail_usuario()}</a>
				<div class="dropdown-divider"></div>
				
			<form class="dropdown-item" method="POST" action="#">
				<button class="btn btn-danger center-block" type="submit" name="accion" value="Salir">Cerrar Sesion</button>
			</form>
			</div>
			</div>
			</nav>
		<div class="m-4" style="height: 550px;">
	<iframe style="height: 100%; width: 100%; border:none" name="myFrame"></iframe>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>