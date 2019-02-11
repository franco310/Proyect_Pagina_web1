<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
  
     String user = (String) request.getSession().getAttribute("nombre");
     
        if(user==null){
            response.sendRedirect("../../index.html");
        }
 %>


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
  
  <link href="../vendor/bootstrap2/css/bootstrap.min.css" rel="stylesheet">
  <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
  <link href="../dist/css/sb-admin-2.css" rel="stylesheet">
  <link href="../vendor/morrisjs/morris.css" rel="stylesheet">
  <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>
    

    
    <div id="wrapper">
        <div class="navbar-default sidebar" role="navigation">
              <div class="d-flex" id="wrapper">
          <!-- Sidebar -->
          <div class="contenedor-from" id="sidebar-wrapper">
            <div class="sidebar-heading">MENU</div>
            <div class="list-group list-group-flush">
              <ul>
                <li><a href="../../Proyect_Pagina_web1/index.html"><span class="icon-user"></span>Inicio</a></li>
                <li><a href="../../Proyect_Pagina_web1/mod_inventario/productos/listar.jsp"><span class="icon-cart"></span>Productos</a></li>
                <li><a href="../../Proyect_Pagina_web1/mod_inventario/categoria/listar.jsp"><span class="icon-cart"></span>Categoria</a></li>
                <li><a href="../../Proyect_Pagina_web1/mod_inventario/cliente/listar.jsp"><span class="icon-users"></span>Clientes</a></li>
                <li><a href="../../Proyect_Pagina_web1/mod_inventario/proveedor/listar.jsp"><span class="icon-truck"></span>Proveedores</a></li>
                <li><a href="../../Proyect_Pagina_web1/mod_inventario/venta/listar.jsp"><span class="icon-price-tags"></span>Ventas</a></li>
            </ul>
            </div>
          </div>

  </div> 
        </div>
        
        
        <ul class="nav navbar-top-links navbar-right"> 
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="#"><i class="fa fa-user fa-fw"></i>Perfil de Usuario</a>
                </li>
                <li><a href="#"><i class="fa fa-gear fa-fw"></i> Configuraciones</a>
                </li>
                <li class="divider"></li>
                 <li><a href="../../Proyect_Pagina_web1/mod_inventario/IinicioSesion/cerrarsesion.jsp"><i class="fa fa-sign-out fa-fw"></i> salir</a>
                 </li>
              
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    
 
    
    
    <div id="page-wrapper">
        <nav>
        <button class="btn btn-light" id="menu-toggle">MENU DESPLEGABLE</button>
       </nav>
        
        
        
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Tablas</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-comments fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">26</div>
                            <div>Productos</div>
                        </div>
                    </div>
                </div>
                <a href="/Proyect_Pagina_web1/Menu/md_listado/productos/listar.jsp">
                    <div class="panel-footer">
                        <span class="pull-left">Ver Listado</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-tasks fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">12</div>
                            <div>Clientes</div>
                        </div>
                    </div>
                </div>
                <a href="/Proyect_Pagina_web1/Menu/md_listado/cliente/listar.jsp">
                    <div class="panel-footer">
                        <span class="pull-left">Ver Listado</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-yellow">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-shopping-cart fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">124</div>
                            <div>Proveedores</div>
                        </div>
                    </div>
                </div>
                <a href="/Proyect_Pagina_web1/Menu/md_listado/proveedor/listar.jsp">
                    <div class="panel-footer">
                        <span class="pull-left">Ver Listado</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-red">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-support fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">13</div>
                            <div>Ventas</div>
                        </div>
                    </div>
                </div>
                <a href="/Proyect_Pagina_web1/Menu/md_listado/venta/listar.jsp">
                    <div class="panel-footer">
                        <span class="pull-left">Ver listado</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    
        </div>
        
  </div>      
    

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
