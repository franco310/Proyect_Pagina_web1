<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Menú</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/estilos.css">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  <link rel="stylesheet" href="font.css">

</head>

<body>


      <div class="d-flex" id="wrapper">
          <!-- Sidebar -->
          <div class="contenedor-from" id="sidebar-wrapper">
            <div class="sidebar-heading">MENU</div>
            <div class="list-group list-group-flush">
              <ul>
                <li><a href="../../Proyect_Pagina_web1/index.html"><span class="icon-user"></span>Inicio</a></li>
                <li><a href="../../Proyect_Pagina_web1/mod_inventario/productos/Producto.jsp"><span class="icon-cart"></span>Productos</a></li>
                <li><a href="../../Proyect_Pagina_web1/mod_inventario/cliente/Cliente.jsp"><span class="icon-users"></span>Clientes</a></li>
                <li><a href="../../Proyect_Pagina_web1/mod_inventario/proveedor/Proveedores.jsp"><span class="icon-truck"></span>Proveedores</a></li>
                <li><a href="../../Proyect_Pagina_web1/mod_inventario/venta/Ventas.jsp"><span class="icon-price-tags"></span>Ventas</a></li>
            </ul>
            </div>
          </div>
          <!-- /#sidebar-wrapper -->

  

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav>
        <button class="btn btn-warning" id="menu-toggle">MENU DESPLEGABLE</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="icon-user"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="#">INICIO <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>
            </li>
          </ul>
        </div>
      </nav>

      <div class="container-fluid">
        <h1 class="mt-4" align="center">Bienvenidos al sistema</h1>
        
      </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>

</body>

</html>
