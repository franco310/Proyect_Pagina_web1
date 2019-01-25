<%-- 
    Document   : newjsp
    Created on : 22/01/2019, 12:58:53
    Author     : Franco-Pc
--%>

<%@page import="ReglasDeNegocio.Pagina"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
   Pagina pagina= new Pagina();
%>
<%
    try {
        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         pagina=Pagina.pagina_buscarporid(codigo);
        
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
              <input type="hidden" id="codigo" name="codigo" value="<%=pagina.getPaginaid()%>">
              <input type="text" required class="form-control" placeholder="Url Pagina" id="url_pagina" value="<%=pagina.getUrl()%>" name="url_pagina"/>
          <input type="text" required class="form-control" placeholder="Descripcion" id="descripcion" value="<%=pagina.getDescripcion()%>" name="descripcion"/>
          
          
         
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>


