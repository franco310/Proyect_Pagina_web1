<%-- 
    Document   : editar
    Created on : 28/01/2019, 18:32:08
    Author     : Franco-Pc
--%>


<%@page import="ReglasDeNegocio.Rol"%>
<%@page import="ReglasDeNegocio.Pagina"%>
<%@page import="ReglasDeNegocio.Rolpagina"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 List<Pagina> lista= Pagina.pagina_buscartodos();
 Iterator<Pagina> itPagina=lista.iterator();
%>
<%
 List<Rol> listap= Rol.rol_buscartodos();
 Iterator<Rol> itRol=listap.iterator();
%>

<%!
   Rolpagina rolpagina= new Rolpagina();
%>
<%
    try {
        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         rolpagina=Rolpagina.rolpagina_buscarporid(codigo);
        
        
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
              <input type="hidden" id="codigo" name="codigo" value="<%=rolpagina.getRolpaginaid()%>">
              <select required class="form-control" placeholder=" Rol Id" id="rol_id" value="<%=rolpagina.getRol()%>"  name="rol_id">
          
            <%while(itRol.hasNext()){
                Rol rol=itRol.next();%> %>
            <option value="<%=rol.getRolid()%>"><%=rol.getNombre_rol()%></option>
            <% } %>
          </select>
              
           <select required class="form-control" placeholder=" Pagina Id" id="pagina_id" value="<%=rolpagina.getPagina()%>"  name="pagina_id">
          
            <%while(itPagina.hasNext()){
                Pagina pagina=itPagina.next();%> %>
            <option value="<%=pagina.getPaginaid()%>"><%=pagina.getDescripcion()%></option>
            <% } %>
          </select>
            
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>