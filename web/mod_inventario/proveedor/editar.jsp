<%-- 
    Document   : editar
    Created on : 14/01/2019, 17:15:01
    Author     : Flavio
--%>

<%@page import="ReglasDeNegocio.Proveedor"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
   Proveedor proveedor= new Proveedor();
%>
<%
    try {
        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         proveedor=Proveedor.proveedores_buscarporid(codigo);
        
        
        } catch (Exception e) {
        }
   
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     
    </head>
    
    <body>
       
        
        
          <form method="POST" action="procesa_editar.jsp">
              <input type="hidden" id="codigo" name="codigo" value="<%=proveedor.getProveedorid()%>">
              <input type="text" required class="form-control" placeholder="Nombre Proveedor" id="nombres_proveedor" value="<%=proveedor.getNombreproveedor()%>" name="nombres_proveedor"/>
              <input type="text" required class="form-control" placeholder="Direccion Proveedor" id="direccion_proveedor" value="<%=proveedor.getDireccion()%>" name="direccion_proveedor"/>
          <input type="text" required class="form-control" placeholder="Telefono Proveedor" id="telefono_proveedor" value="<%=proveedor.getTelefono()%>" name="telefono_proveedor"/>
          
          
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>