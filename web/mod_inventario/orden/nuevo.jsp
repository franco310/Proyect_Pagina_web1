//<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ReglasDeNegocio.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="AccesoADatos.*"%>
<%
 List<Proveedor> lista= Proveedor.proveedores_buscartodos();
 Iterator<Proveedor> itProveedor=lista.iterator();
%>
<%
 List<Producto> listap= Producto.producto_buscartodos();
 Iterator<Producto> itProducto=listap.iterator();
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Orden</title>
        
    </head>
    <body>       
            <form method="POST"  action="procesa_nuevo.jsp">
            <select class="form-control" placeholder="Id Proveedor" required id="id_proveedor" name="id_proveedor">  
            <option>Proveedor</option>
            <%while(itProveedor.hasNext()){
                Proveedor proveedor=itProveedor.next();%> %>
                <option value="<%=proveedor.getProveedorid()%>"><%=proveedor.getNombreproveedor()%></option>
            <% } %>                             
            </select>
            <select  class="form-control" placeholder="Id Producto" required id="id_producto" name="id_producto">  
            <option>Producto</option>
            <%while(itProducto.hasNext()){
                Producto producto=itProducto.next();%> %>
            <option value="<%=producto.getProductoid()%>"><%=producto.getNombreproducto()%></option>
            <% } %>                             
            </select>            
            <input type="text" class="form-control" placeholder="Cantidad" required id="cantidad" name="cantidad_orden"/>
            <input type="text" class="form-control" placeholder="Precio unitario" required id="preciounitario" name="preciounitario_orden"/>            
            <input type="text" class="form-control" placeholder="Numero orden" required id="numero_orden" name="numero_orden"/>
            <input type="text" class="form-control" placeholder="Entregada" required id="entregada" name="entregada"/>          
            <input type="text" class="form-control" placeholder="Fecha entrega" required id="fecha_entrega" name="fecha_entrega"/>                   
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
    </body>
</html>

