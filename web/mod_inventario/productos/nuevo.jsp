
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ReglasDeNegocio.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 List<Categoria> lista= Categoria.categoria_buscartodos();
 Iterator<Categoria> itCategoria=lista.iterator();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        
        
          <form method="POST"  action="procesa_nuevo.jsp">
            <input type="text" class="form-control" placeholder="Nombre producto" required id="nombre_producto" name="nombre_producto"/>
          
           <select class="form-control" placeholder="Categoriaid" required id="categoriaid" name="categoriaid">  
            <option>Categoria</option>
             <%while(itCategoria.hasNext()){
                Categoria categoria=itCategoria.next();%> %>
                <option value="<%=categoria.getCategoriaid()%>"><%=categoria.getNombre()%></option>
            <% } %>                             
            </select>
            <input type="text" class="form-control" placeholder="Stock" required id="stock_producto" name="stock_producto"/>
             <input type="text" class="form-control" placeholder="Precio" required id="precio_producto" name="precio_producto"/>
          
            
            
            
            
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
    </body>
</html>

