<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link rel="stylesheet" href="font.css">
     <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    
    <div id="page-content-wrapper">
       <nav>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="icon-user"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="../../index.html">INICIO<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Link</a>
            </li>
          
          </ul>
        </div>
      </nav>
  </div>
    
    
    
    <div class="contenedor-form">
        
        <div class="toggle">
            <span>Registrarse</span>
        </div>
         <h1 align="center" >
                <img src="./img/bg2.jpg"/>
            </h1>
            <h2 align="center">Iniciar Sesión</h2>
        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-0 p-b-10">
                            
				<form role="form" action="procesalogin.jsp" target="sessionJsp">
					<!--span class="login100-form-title p-b-120">
						Bienvenido
					</span-->					
					<div class="wrap-input100 validate-input m-t-10 m-b-35" data-validate = "Ingrese usuario">
						<input class="input100" type="text" name="nombre">
						<span class="focus-input100" data-placeholder="Nombre usuario"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-50" data-validate="Ingrese contraseña">
						<input class="input100" type="password" name="clave">
						<span class="focus-input100" data-placeholder="Contraseña"></span>
					</div>
					<div class="container-login100-form-btn">                                            
						<button id="btn_guardar" name="btn_guardar" type="submit" class="login100-form-btn"  >Inicio de Sesión</button>
					</div>

					<ul class="login-more p-t-40">						
						
					</ul>
				</form>
			</div>
		</div>
	</div>
        <!--div id="dropDownSelect1"></div-->
        
        
        <div class="formulario">
            <h2>Crea tu Cuenta</h2>
            <form method="POST" action="procesa_nuevo.jsp">
                <input type="text" class="form-control" placeholder="Nombre Usuario"  required id="nombre_usuario" name="nombre_usuario">
                <input type="password" class="form-control" placeholder="Contraseña" required id="contrasenia" name="contrasenia">                
                <input type="text" class="form-control" placeholder="Cedula" required id="cedula" name="cedula">
              
                <div class="modal-footer" align="center">
                <button  id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <div class="toggle2"><button  type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button></div>
                </div>
            </form>
        </div>
    </div>
    <script src="js/jquery-3.1.1.min.js"></script>    
    <script src="js/main.js"></script>
    
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