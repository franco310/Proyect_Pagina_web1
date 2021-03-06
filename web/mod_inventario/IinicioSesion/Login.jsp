<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Iniciar sesi�n</title>
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
        <span class="icon-user"></span> Polimodas</button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a href="../../index.html">
                  <button class="btn btn-info">Inicio</button>  
                </a>
            </li>
            <li class="nav-item">
          </ul>
        </div>
      </nav>
  </div>
    
    
    
    <div class="contenedor-form">
        
        <div class="toggle">
            <span>Reg�strate</span>
        </div>
        
        <div class="formulario">
         <h1 align="center" >
                <img src="./img/inicio.png"/>
            </h1>
            
            <h2 align="center">Acceder a Polimodas</h2>
 
				<form role="form" action="procesalogin.jsp" target="sessionJsp">
					<!--span class="login100-form-title p-b-120">
						Bienvenido
					</span-->					
					<div class="wrap-input100 validate-input m-t-10 m-b-35" data-validate = "Ingrese usuario">
						<input class="input100" type="text" name="nombre" placeholder="Ingrese su Usuario" >
						<span class="focus-input100" data-placeholder="Nombre usuario"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-50" data-validate="Ingrese contrase�a">
						<input class="input100" type="password" name="clave" placeholder="Ingrese su Contrase�a" >
						<span class="focus-input100" data-placeholder="Contrase�a"></span>
					</div>
					
                                        <h3 align="center">
                                        <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-info">Acceder</button>
				        </h3>

				
				</form>			
                            </div>

        
        
        <div class="formulario">
            <h2>Crea tu cuenta</h2>
            <form method="POST" action="procesa_nuevo.jsp">
                <input type="text" class="form-control" placeholder="Ingrese Un Nombre"  required id="nombre_usuario" name="nombre_usuario">
                <input type="password" class="form-control" placeholder="Ingrese Una Contrase�a" required id="contrasenia" name="contrasenia">                
                <input type="text" class="form-control" placeholder="Cedula" required id="cedula" name="Ingrese su C�dula">
              
                
            
                    <h4 align="center">
                    <button  id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                    </br></br>
                     <div class="toggle2"><button  type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button></div>
                    </h4>
    
               
               
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