<%-- 
    Document   : editar
    Created on : 14/01/2019, 17:15:01
    Author     : Flavio
--%>

<%@page import="ReglasDeNegocio.Cliente"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
   Cliente cliente= new Cliente();
%>
<%
    try {
        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         cliente=Cliente.cliente_buscarporid(codigo);
        
        
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
              <input type="hidden" id="codigo" name="codigo" value="<%=cliente.getClienteid()%>">
              <input type="text" required class="form-control" placeholder="Nombre Cliente" id="nombre_cliente" value="<%=cliente.getNombres()%>" name="nombres_cliente"/>
              <input type="text" required class="form-control" placeholder="Apellido Cliente" id="nombre_cliente" value="<%=cliente.getApellidos()%>" name="apellidos_cliente"/>
          <input type="text" required class="form-control" placeholder="Telefono Cliente" id="nombre_cliente" value="<%=cliente.getTelefono()%>" name="telefono_cliente"/>
          <input type="text" required class="form-control" placeholder="Email Cliente" id="nombre_cliente" value="<%=cliente.getEmail()%>" name="email_cliente"/>
          
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>