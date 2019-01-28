<%-- 
    Document   : newjsp
    Created on : 22/01/2019, 12:58:53
    Author     : Franco-Pc
--%>

<%@page import="ReglasDeNegocio.Rol"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
   Rol rol= new Rol();
%>
<%
    try {
        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         rol=Rol.rol_buscarporid(codigo);
        
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
              <input type="hidden" id="codigo" name="codigo" value="<%=rol.getRolid()%>">
              <input type="text" required class="form-control" placeholder="Rol" id="nombre_rol" value="<%=rol.getNombre_rol()%>" name="nombre_rol"/>
              <input type="text" required class="form-control" placeholder="Descripcion" id="descripcion" value="<%=rol.getDescripcion()%>" name="descripcion"/>
          
          
         
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>


