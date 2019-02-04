<%-- 
    Document   : nuevo
    Created on : 28/01/2019, 16:59:41
    Author     : Franco-Pc
--%>
<%@page import="ReglasDeNegocio.Pagina"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ReglasDeNegocio.Rol"%>
<%
 List<Rol> lista= Rol.rol_buscartodos();
 Iterator<Rol> itRol=lista.iterator();
%>
<%
 List<Pagina> listap= Pagina.pagina_buscartodos();
 Iterator<Pagina> itPagina=listap.iterator();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Venta</title>
        
    </head>
    <body>        
            <form method="POST"  action="procesa_nuevo.jsp">
            <select class="form-control" placeholder="IdRol" required id="rolid" name="rolid">  
            <option>Rol</option>
            <%while(itRol.hasNext()){
                Rol rol=itRol.next();%> %>
                <option value="<%=rol.getRolid()%>"><%=rol.getNombre_rol()%></option>
            <% } %>                             
            </select>
            <select  class="form-control" placeholder="Id Pagina" required id="paginaid" name="paginaid">  
            <option>Pagina</option>
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

