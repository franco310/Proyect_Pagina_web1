<%-- 
    Document   : listar
    Created on : 14/01/2019, 17:28:09
    Author     : Flavio
--%>

<%@page import="ReglasDeNegocio.Cliente"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
      
   
        
 List<Cliente> lista=Cliente.cliente_buscartodos();
 Iterator<Cliente> itCliente=lista.iterator();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css">
       
        <link href="css/simple-sidebar.css" rel="stylesheet">        
         <link href="../../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
        <link href="../../dist/css/sb-admin-2.css" rel="stylesheet">
        <link href="../../vendor/morrisjs/morris.css" rel="stylesheet">
        <link href="../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
       

        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/jquery.validate.min.js"></script>
        <title>Clientes</title>
    </head>
    <body>
         <!--Sección alerta-->
        <%
            String alerta="";
            try {
                      alerta=request.getParameter("alerta").toString();
                } catch (Exception e) {
                }
           
    if (alerta.equals("si")){%>
        <div class="alert alert-success" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
             <strong>Éxito!</strong> La transacción fue éxitosa!
        </div>
        <%} if(alerta.equals("no")){%>
        <div class="alert alert-danger" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
             <strong>Falló!</strong> La transacción fue fallida!
        </div>
       <% }%>
        <!--Fin Sección alerta-->

        
        
    <div id="page-content-wrapper">
          <ul class="nav navbar-top-links navbar-right"> 
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="/Proyect_Pagina_web1/index.html"><i class="fa fa-user fa-fw"></i>Inicio</a>
                </li>
                <li><a href="/Proyect_Pagina_web1/Menu/menu2.jsp"><i class="fa fa-gear fa-fw"></i>Menu de Control</a>
                </li>
                <li class="divider"></li>
                
                <li><a href="../../mod_inventario/IinicioSesion/cerrarsesion.jsp"><i class="fa fa-sign-out fa-fw"></i> salir</a></li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
     </div>
        
        
         <h1>Clientes</h1> 
         <button type="button" onclick="return modalnuevo();" class="btn btn-dark" data-toggle="modal" data-target="#ModalNuevo"> Nuevo</button>  
          
         
         
<table id="example" class="table table-bordered table-dark" style="width:100%"> 
                <thead>
                <th>Id</th>
                <th>Nombres Cliente</th>
                <th>Apellidos Cliente</th>
                <th>Telefono Cliente</th>
                <th>Email Cliente</th>
             <th>Opciones</th>
                </thead>
                <tbody>
               <%while(itCliente.hasNext()){
                  Cliente cliente=itCliente.next();%>
                <tr>
                    <td><%= cliente.getClienteid()%></td>
                    <td><%= cliente.getNombres()%></td>
                    <td><%= cliente.getApellidos()%></td>
                    <td><%= cliente.getTelefono()%></td>
                    <td><%= cliente.getEmail()%></td>
                   
                   <td>
                         <a class="btn btn-danger" href='procesa_eliminar.jsp?codigo=<%= cliente.getClienteid()%>' onclick="return confirm('¿Está seguro que desea eliminar este registro?');">Eliminar</a>
                      <button type="button"  onclick="return modaleditar(<%= cliente.getClienteid()%>)" class="btn btn-primary" data-toggle="modal" data-target="#ModalEditar">Editar</button>  

                   </td>
                </tr>
               <%}%>                
                </tbody>           
            </table>
                
                <div class="modal fade" id="ModalEditar" class="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   
                <div class="modal-dialog" role="document">
                <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Editar Cliente</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">


                      </div>
              </div>
            </div>
          </div> 
                
                
           <div class="modal fade" id="ModalNuevo" class="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   
                <div class="modal-dialog" role="document">
                <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Nuevo Cliente</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">


                      </div>
              </div>
            </div>
          </div>       
                
                
                
  
    
    <script src="js/jquery-3.1.1.min.js"></script>    
    <script src="js/main.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>          
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap4.min.js"></script>
    
    
    <script>
           function modaleditar(codigo){
           
      
            $('.modal-body').load('editar.jsp?codigo='+codigo,function(){

            });
        }
        function modalnuevo(codigo){
           
      
            $('.modal-body').load('nuevo.jsp',function(){

            });
        }
         <!--Sección datatable-->
	$(document).ready(function() {
            
                var table = $('#example').DataTable( {
                    lengthChange: false,
                    buttons: [ 'copy', 'excel', 'csv', 'pdf', 'colvis' ],
                        language: {
                        "decimal": "",
                        "emptyTable": "No hay información",
                        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
                        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
                        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
                        "infoPostFix": "",
                        "thousands": ",",
                        "lengthMenu": "Mostrar _MENU_ Entradas",
                        "loadingRecords": "Cargando...",
                        "processing": "Procesando...",
                        "search": "Buscar:",
                        "zeroRecords": "Sin resultados encontrados",
                        "paginate": {
                            "first": "Primero",
                            "last": "Ultimo",
                            "next": "Siguiente",
                            "previous": "Anterior"
                        },
                          "buttons": {
                            "copy": "Copiar",
                            "colvis": "Columnas visibles",

                        }}

                } );

                table.buttons().container()
                    .appendTo( '#example_wrapper .col-md-6:eq(0)' );
            } );
         <!--fin Sección datatable-->
             <!--Sección alerta-->
      window.setTimeout(function() {
    $(".alert").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove(); 
    });
}, 4000);
         <!--fin Sección alerta-->
 
    </script>
    </body>
</html>