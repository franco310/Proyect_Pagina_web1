<%@page import="ReglasDeNegocio.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 List<Proveedor> lista= Proveedor.proveedor_buscartodos();
 Iterator<Proveedor> itProveedor=lista.iterator();
%>
<%
 List<Producto> listap= Producto.producto_buscartodos();
 Iterator<Producto> itProducto=listap.iterator();
%>


<%!
   Orden orden= new Orden();
%>
<%
    try {
        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         orden=Orden.orden_buscarporid(codigo);                       
        } catch (Exception e) {
        }
   
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Orden</title>
     
    </head>
    
    <body>                    
          <form method="POST" action="procesa_editar.jsp">
          <input type="hidden" id="codigo" name="codigo" value="<%=orden.getOrdenid()%>">         
          <select required class="form-control" placeholder="Id Proveedor" id="id_proveedor" value="<%=orden.getProveedor()%>"  name="id_proveedor">
          
            <%while(itProveedor.hasNext()){
                Proveedor proveedor=itProveedor.next();%> %>
            <option value="<%=proveedor.getProveedorid()%>"><%=proveedor.getNombreproveedor()%></option>
            <% } %>
          </select>
          <select required class="form-control" placeholder="Id Producto" id="id_producto" value="<%=orden.getProducto()%>" name="id_producto">              
          
            <%while(itProducto.hasNext()){
                Producto producto=itProducto.next();%> %>
            <option value="<%=producto.getProductoid()%>"><%=producto.getNombreproducto()%></option>
            <% } %>                             
            </select> 
          <input type="text" required class="form-control" placeholder="Cantidad" id="cantidad" value="<%=orden.getCantidad()%>" name="cantidad_orden"/>
          <input type="text" required class="form-control" placeholder="Precio unitario" id="preciounitario" value="<%=orden.getPreciounitario()%>" name="preciounitario_orden"/>
          <input type="text" required class="form-control" placeholder="Numero orden" id="numero_orden" value="<%=orden.getNumeroorden()%>" name="numero_orden"/>          
          <input type="text" required class="form-control" placeholder="Entregada" id="entregada" value="<%=orden.isEntregada()%>" name="entregada"/>          
          <input type="text" required class="form-control" placeholder="Fecha" id="fecha_entrega" value="<%=orden.getFechaentrega()%>" name="fecha_entrega"/>
          
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>

