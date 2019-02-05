<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login |CódigoMasters|</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
</head>
<body>
    
    <div class="contenedor-form">
        
        <div class="toggle">
            <span>Registrarse</span>
        </div>
        
        <div class="formulario">
            
            <h1 align="center" >
                <img src="./img/inicio.png"/>
            </h1>
            <h2 align="center">Iniciar Sesión</h2>
            <form action="#">
                <input type="text" placeholder="Usuario" required>
                <input type="password" placeholder="Contraseña" required>
                <input type="submit" value="Iniciar Sesión">
            </form>
        </div>
        
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
    
</body>
</html>