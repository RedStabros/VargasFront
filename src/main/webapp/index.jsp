<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Ingreso - Vargas</title>
<link rel="stylesheet" href="css/index.css">
<link rel="shortcut icon" href="img/logo.ico" type="image/x-icon">
</head>
<body>
	<div class="container mt-4 col-lg-4" >
		<div class="card col-sm-10">
			<div class="card-body">
				<form class="form-sign" method="post" action="./Servlet">
					<div class="form-group text-center login" >
						<img src="img/logo.png" alt="">
						<br>
						<h6>El verdadero Cuero</h6>
						<div class="line"></div>
						<br>
						<h3>Ingreso Administrativo</h3>
						<br>
					</div>
					<div class="form-group">
						<label>Usuario:</label>
						<input type="text" name="txtusuario" class="form-control">
					</div>
					<br>
					<div class="form-group">
						<label>Password:</label>
						<input type="password" name="txtpassword" class="form-control">
					</div>
					<br>
					<div class="d-grid gap-2 col-10 mx-auto">
					<center>
					<button type="submit" name="accion" value="Ingresar" class="btn btn-danger btn-sm">Ingresar</button>
					</center>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body> 
</html>>