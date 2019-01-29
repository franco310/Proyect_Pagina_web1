<%@page import="ReglasDeNegocio.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 List<Cliente> lista= Cliente.cliente_buscartodos();
 Iterator<Cliente> itCliente=lista.iterator();
%>
<%
 List<Producto> listap= Producto.producto_buscartodos();
 Iterator<Producto> itProducto=listap.iterator();
%>


<%!
   Venta venta= new Venta();
%>
<%
    try {
        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         venta=Venta.venta_buscarporid(codigo);                       
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
          <input type="hidden" id="codigo" name="codigo" value="<%=venta.getVentaid()%>">         
          <select required class="form-control" placeholder="Id Cliente" id="id_cliente" value="<%=venta.getCliente()%>"  name="id_cliente">
          
            <%while(itCliente.hasNext()){
                Cliente cliente=itCliente.next();%> %>
            <option value="<%=cliente.getClienteid()%>"><%=cliente.getNombres()%></option>
            <% } %>
          </select>
          <select required class="form-control" placeholder="Id Producto" id="id_producto" value="<%=venta.getProducto()%>" name="id_producto">              
          
            <%while(itProducto.hasNext()){
                Producto producto=itProducto.next();%> %>
            <option value="<%=producto.getProductoid()%>"><%=producto.getNombreproducto()%></option>
            <% } %>                             
            </select> 
          <input type="text" required class="form-control" placeholder="Cantidad venta" id="cantidad_venta" value="<%=venta.getCantidad()%>" name="cantidad_venta"/>
          <input type="text" required class="form-control" placeholder="Precio unitario venta" id="preciounitario_venta" value="<%=venta.getPreciounitarioventa()%>" name="preciounitario_venta"/>
          <input type="text" required class="form-control" placeholder="Fecha transaccion" id="fechatransaccion" value="<%=venta.getFechatransaccion()%>" name="fechatransaccion_venta"/>          
          <input type="text" required class="form-control" placeholder="Numero factura" id="numero_factura" value="<%=venta.getNumerofactura()%>" name="numero_factura"/>
          
          
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>

