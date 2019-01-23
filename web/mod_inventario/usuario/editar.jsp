<%-- 
    Document   : newjsp
    Created on : 22/01/2019, 12:58:53
    Author     : Franco-Pc
--%>

<%@page import="ReglasDeNegocio.Usuario"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
   Usuario usuario= new Usuario();
%>
<%
    try {
        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         usuario=Usuario.usuario_buscarporid(codigo);
        
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
              <input type="hidden" id="codigo" name="codigo" value="<%=usuario.getUsuarioid()%>">
              <input type="text" required class="form-control" placeholder="Nombre Usuario" id="nombre_usuario" value="<%=usuario.getNombre_usuario()%>" name="nombre_usuario"/>
          <input type="text" required class="form-control" placeholder="Contrasenia" id="contrasenia" value="<%=usuario.getContrasenia()%>" name="contrasenia"/>
          <input type="text" required class="form-control" placeholder="Cedula" id="cedula" value="<%=usuario.getCedula()%>" name="cedula"/>
          
         
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>


