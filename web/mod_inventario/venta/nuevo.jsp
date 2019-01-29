<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ReglasDeNegocio.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="AccesoADatos.*"%>
<%
 List<Cliente> lista= Cliente.cliente_buscartodos();
 Iterator<Cliente> itCliente=lista.iterator();
%>
<%
 List<Producto> listap= Producto.producto_buscartodos();
 Iterator<Producto> itProducto=listap.iterator();
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Venta</title>
        
    </head>
    <body>        
            <form method="POST"  action="procesa_nuevo.jsp">
            <select class="form-control" placeholder="Id Cliente" required id="id_cliente" name="id_cliente">  
            <option>Cliente</option>
            <%while(itCliente.hasNext()){
                Cliente cliente=itCliente.next();%> %>
                <option value="<%=cliente.getClienteid()%>"><%=cliente.getNombres()%></option>
            <% } %>                             
            </select>
            <select  class="form-control" placeholder="Id Producto" required id="id_producto" name="id_producto">  
            <option>Producto</option>
            <%while(itProducto.hasNext()){
                Producto producto=itProducto.next();%> %>
            <option value="<%=producto.getProductoid()%>"><%=producto.getNombreproducto()%></option>
            <% } %>                             
            </select>            
            <input type="text" class="form-control" placeholder="Cantidad venta" required id="cantidad_venta" name="cantidad_venta"/>
            <input type="text" class="form-control" placeholder="Precio unitario venta" required id="preciounitario_venta" name="preciounitario_venta"/>            
            <input type="text" class="form-control" placeholder="Fecha transaccion" required id="fechatransaccion_venta" name="fechatransaccion_venta"/>
            <input type="text" class="form-control" placeholder="Numero factura" required id="numero_venta" name="numero_factura"/>          
          
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
    </body>
</html>

