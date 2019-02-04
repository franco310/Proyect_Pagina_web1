<%-- 
    Document   : editar
    Created on : ene 9, 2019, 4:27:45 p.m.
    Author     : Flavio
--%>


<%@page import="ReglasDeNegocio.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 List<Categoria> lista= Categoria.categoria_buscartodos();
 Iterator<Categoria> itCategoria=lista.iterator();
%>


<%!
   Producto producto= new Producto();
%>
<%
    try {
        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         producto=Producto.producto_buscarporid(codigo);                       
        } catch (Exception e) {
        }
   
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Venta</title>
     
    </head>
    
    <body>                    
          <form method="POST" action="procesa_editar.jsp">
          <input type="hidden" id="codigo" name="codigo" value="<%=producto.getProductoid()%>">  
          <input type="text" required class="form-control" placeholder="Nombre producto" id="nombreproducto_producto" value="<%=producto.getNombreproducto()%>" name="nombreproducto"/>
          <select required class="form-control" placeholder="Categoriaid" id="categoriaid" value="<%=producto.getCategoria()%>"  name="categoriaid">
          
            <%while(itCategoria.hasNext()){
                Categoria categoria=itCategoria.next();%> %>
            <option value="<%=categoria.getCategoriaid()%>"><%=categoria.getNombre()%></option>
            <% } %>
                                  
            </select> 
          <input type="text" required class="form-control" placeholder="Stock Producto" id="stock producto" value="<%=producto.getStock()%>" name="stock_producto"/>
          <input type="text" required class="form-control" placeholder="Precio Producto" id="precio producto" value="<%=producto.getPrecio()%>" name="precio_producto"/>
     
          
          
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>