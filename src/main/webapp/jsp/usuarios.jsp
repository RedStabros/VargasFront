<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css" rel="stylesheet" />
    <!-- Styles Custom -->
    <link rel="stylesheet" href="css/estilos.css">
    <!-- CDN datatable -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
    <title>Usuarios - Vargas</title>
    <link rel="shortcut icon" href="img/logo.ico" type="image/x-icon">
</head>

<body>
    <!-- Navbar -->
    <header>
    
        <nav class="navbar fixed-top double-nav bg-primary-color p-3">
            <div class="container-fluid">
                <div class="float-left">
                    <a data-mdb-toggle="offcanvas" data-mdb-target="#offcanvasWithBackdrop"
                        aria-controls="offcanvasWithBackdrop" role="button">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>
                <img class="offcanvas-title" id="offcanvasWithBackdropLabel" src="img/logovargas3.svg" width="100px" />
                <h4>Usuarios - Medellín</h4>
                <ul class="navbar-nav d-flex flex-row align-items-center">
                    <li class="nav-item ms-3">
                        ${usuario.getNombre_usuario()}
                    </li>
                    <li class="nav-item ms-3 dropdown">
                        <a class="nav-link dropdown-toggle link-white" href="#" id="navbarDropdown" role="button"
                            data-mdb-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-user"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                            <li>
                                <a class="dropdown-item" href="#">Ver perfil</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Cerrar sesion</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="offcanvas offcanvas-start bg-primary-color" tabindex="-1" id="offcanvasWithBackdrop"
                aria-labelledby="offcanvasWithBackdropLabel">
                <div class="offcanvas-header">
                    <img class="offcanvas-title" id="offcanvasWithBackdropLabel" src="img/logovargas3.svg" width="100px" />
                    <button type="button" class="btn boxshadow" data-mdb-dismiss="offcanvas" aria-label="Close">
                        <i class="fas fa-times fa-2x"></i>
                    </button>
                </div>
                <div class="offcanvas-body d-flex flex-column justify-content-start">
                    <a class="items-offcanvas" href="jsp/usuarios.jsp">USUARIOS</a>
                    <a class="items-offcanvas" href="jsp/clientes.jsp">CLIENTES</a>
                    <a class="items-offcanvas" href="jsp/proveedores.jsp">PROVEEDORES</a>                    
                    <a class="items-offcanvas" href="jsp/productos.jsp">PRODUCTOS</a>
                    <a class="items-offcanvas" href="jsp/ventas.jsp">VENTAS</a>
                     <a class="items-offcanvas" href="jsp/reportes.jsp">REPORTES</a>
                    <a class="items-offcanvas" href="jsp/consolidado.jsp">CONSOLIDACION</a>
                </div>
            </div>
        </nav>
    </header>
    <!-- End Navbar -->

    <div id="intro">
        <div class="p-100 h-100">
            <div class="container">
                <!--Search and add button-->
                <div class="row mb-3">
                    <!--button modal "Nuevo"-->
                    <button type="button" class="btn btn-light-color col me-5 me-md-0 col-md-2" data-mdb-toggle="modal"
                        data-mdb-target="#addUserModal">
                        Nuevo
                    </button>
                    <!--Modal "Nuevo"-->
                    <div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="modal-label"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="modal-label">Agregar Usuario</h5>
                                    <button type="button" class="btn-close" data-mdb-dismiss="modal"
                                        aria-label="Cerrar"></button>
                                </div>
                                <form class="p-3 needs-validation" method="POST" action="Controlador" novalidate>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-outline mb-4">
                                                	<input type="hidden" name="menu" value="Usuarios">
                                                    <input type="number" class="form-control" name="txtcedula" required>
                                                    <!-- Tienen que cambiar el type segun sus necesidades -->
                                                    <label class="form-label" for="campo1">Cedula Usuario</label>
                                                    <div class="invalid-feedback">Mensaje de invalido.</div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-outline mb-4">
                                                    <input type="text" class="form-control" name="txtnombre" required>
                                                    <label class="form-label" for="campo2">Nombre Usuario</label>
                                                    <div class="invalid-feedback">Mensaje de invalido</div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-outline mb-4">
                                                    <input type="email" class="form-control" name="txtemail" required>
                                                    <label class="form-label" for="campo3">Email Usuario</label>
                                                    <div class="invalid-feedback">Mensaje de invalido.</div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-outline mb-4">
                                                    <input type="text" class="form-control" name="txtusuario" required>
                                                    <label class="form-label" for="campo4">Usuario</label>
                                                    <div class="invalid-feedback">Mensaje de invalido.</div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-outline">
                                                    <input type="text" class="form-control" name="txtpassword" required>
                                                    <label class="form-label" for="campo5">Password</label>
                                                    <div class="invalid-feedback">Mensaje de invalido.</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button class="btn btn-light-color" type="submit" name="accion" value="Agregar" method="POST">Crear</button>
                                        <button type="button" class="btn btn-danger" data-mdb-dismiss="modal">
                                            Cerrar
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- End modal "Nuevo"-->
                    <div class="form-outline offset-md-6 col col-md-4">
                        <input type="text" class="form-control" id="datatable-search">
                        <label class="form-label" for="datatable-search">Buscar</label>
                    </div>
                </div>
                <!--End Search-->
                <!--table-->
                <div class="table-responsive">
                    <table id="datatable" class="table table-borderless table-striped align-middle">
                        <thead class="table-secondary-color text-center">
                            <tr>
                                <th scope="col">Cedula</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Email</th>
                                <th scope="col">Usuario</th>
                                <th scope="col">Password</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody class="text-center">                            
                            <c:forEach var="lista" items="${lista}">
                            	<tr>
                                <td scope="row">${lista.getCedula_usuario()}</td>
                                <td scope="row">${lista.getNombre_usuario()}</td>
                                <td scope="row">${lista.getEmail_usuario()}</td>
                                <td scope="row">${lista.getUsuario()}</td>
                                <td scope="row">${lista.getPassword()}</td>
                                <td>
                                	<div class="btn-group" role="group" aria-label="crud">
                                        <a type="button" class="btn btn-warning btn-sm data" data-mdb-toggle="modal"
                                            data-mdb-target="#editarModal">
                                            <i class="fas fa-edit fa-lg"></i>
                                        </a>
                                        <a type="button" class="btn btn-danger btn-sm" href="Controlador?menu=Usuarios&accion=Eliminar&id=${lista.get_id()}">
                                            <i class="fas fa-trash fa-lg"></i>
                                        </a>
                                    </div>                                    
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!-- End table-->
                <!--Modal Editar-->
                <div class="modal fade" id="editarModal" tabindex="-1" aria-labelledby="editarModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="editarModalLabel">Editar Usuario</h5>
                                <button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Cancelar">
                                </button>
                            </div>
                            <form class="p-3 needs-validation" method="POST" action="Controlador" novalidate>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-outline mb-4">
                                            	<input type="hidden" name="menu" value="Usuarios">
                                            	<input type="hidden" name="txtid" value="${usuarioSeleccionado.get_id()}">
                                                <input type="number" class="form-control" id="campo6" name="txtcedula"  value="${usuarioSeleccionado.getCedula_usuario()}" required>
                                                <!-- Tienen que cambiar el type segun sus necesidades -->
                                                <label class="form-label" for="campo6">Cambiar Cedula</label>
                                                <div class="invalid-feedback">Mensaje de invalido.</div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-outline mb-4">
                                                <input type="text" class="form-control" id="campo7" name="txtnombre" value="${usuarioSeleccionado.getNombre_usuario()}" required>
                                                <label class="form-label" for="campo7">Cambiar Nombre</label>
                                                <div class="invalid-feedback">Mensaje de invalido</div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-outline mb-4">
                                                <input type="email" class="form-control" id="campo8" name="txtemail" value="${usuarioSeleccionado.getEmail_usuario()}" required>
                                                <label class="form-label" for="campo8">Cambiar Email</label>
                                                <div class="invalid-feedback">Mensaje de invalido.</div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-outline mb-4">
                                                <input type="text" class="form-control" id="campo9" name="txtusuario" value="${usuarioSeleccionado.getUsuario()}" required>
                                                <label class="form-label" for="campo9">Cambiar Usuario</label>
                                                <div class="invalid-feedback">Mensaje de invalido.</div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-outline">
                                                <input type="text" class="form-control" id="campo0" name="txtpassword" value="${usuarioSeleccionado.getPassword()}" required>
                                                <label class="form-label" for="campo0">Cambiar Password</label>
                                                <div class="invalid-feedback">Mensaje de invalido.</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-light-color" type="submit" name="accion" value="Actualizar" method="PUT">Modificar</button>
                                    <button type="button" class="btn btn-danger" data-mdb-dismiss="modal">Cancelar</button>
                                </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="abajo"><br>
    </div>
    <footer class=" text-center text-white abajo2">    
        <div class="container-fluid p-3 bg-primary-color">
            <section>
                <a class="btn btn-floating text-white m-1" href="#!" role="button" data-mdb-ripple-color="white"><i
                        class="fab fa-facebook-f fa-2x"></i></a>
                <a class="btn btn-floating text-white m-1" href="#!" role="button" data-mdb-ripple-color="white"><i
                        class="fab fa-github fa-3x"></i></a>
                <a class="btn btn-floating text-white m-1" href="#!" role="button" data-mdb-ripple-color="white"><i
                        class="fab fa-instagram fa-3x"></i></a>
            </section>
        </div>
        <div class="container-fluid bg-secondary-color p-1">Grupo 37 - Equipo 3</div>
    </footer>
    <!-- Script Datatables -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
    <!-- MDB -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"></script>
    <!-- Script Custom -->
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <!-- Script SweetAlert -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>