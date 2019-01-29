<%@page import="java.sql.Time"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<%@page import="AccesoADatos.*"%>
<!DOCTYPE html>
<%
    try {
            Venta venta=new Venta();
            Cliente cliente = new Cliente();
            Cliente clientes = cliente.cliente_buscarporid(Integer.valueOf(request.getParameter("id_cliente")));
            Producto producto = new Producto();            
            Producto productos = producto.producto_buscarporid(Integer.valueOf(request.getParameter("id_producto")));
            venta.setCliente(clientes);            
            venta.setProducto(productos);            
            venta.setCantidad(Integer.valueOf(request.getParameter("cantidad_venta")));
            venta.setPreciounitarioventa(Double.valueOf(request.getParameter("preciounitario_venta")));                        
            venta.setFechatransaccion(Time.valueOf(request.getParameter("fechatransaccion_venta")));
            venta.setNumerofactura(request.getParameter("numero_factura"));
            venta.setVentaid(Integer.valueOf(request.getParameter("codigo")));
           boolean result= Venta.venta_editar(venta);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }
%>