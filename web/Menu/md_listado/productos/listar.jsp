<%-- 
    Document   : listar
    Created on : ene 7, 2019, 4:31:56 p.m.
    Author     : Flavio
--%>

<%@page import="ReglasDeNegocio.Producto"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 List<Producto> lista=Producto.producto_buscartodos();
 Iterator<Producto> itProducto=lista.iterator();
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
        <link href="../../../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
        <link href="../../../dist/css/sb-admin-2.css" rel="stylesheet">
        <link href="../../../vendor/morrisjs/morris.css" rel="stylesheet">
        <link href="../../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/jquery.validate.min.js"></script>
        <title>Productos</title>
    </head>
    <body>

        
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
                <li><a href="/Proyect_Pagina_web1/mod_inventario/IinicioSesion/Login.jsp"><i class="fa fa-sign-out fa-fw"></i> Cerrar sesión</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
     </div>

        
       
          
         <h1>Lista De Productos</h1>
         
<table id="example" class="table table-bordered" style="width:100%">   
    
    <thead>
                <th>Id</th>
                <th>Nombre Producto</th>
                <th>Categoria</th>
                <th>Stok</th>
                <th>Precio</th>
    
                </thead>
                <tbody>
               <%while(itProducto.hasNext()){
                  Producto producto=itProducto.next();%>
                <tr  class="table-active">
                   <td><%= producto.getProductoid()%></td>
                    <td><%= producto.getNombreproducto()%></td>
                    <td><%= producto.getCategoria()%></td>
                    <td><%= producto.getStock()%></td>
                    <td><%= producto.getPrecio()%></td>
                   
                   
                </tr>
               <%}%>                
                </tbody>           
            </table>
                
              
          
                
                
     
                
                
                
                

                
    <script src="js/jquery-3.1.1.min.js"></script>            
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
