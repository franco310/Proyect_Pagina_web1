<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<%@page import="ReglasDeNegocio.Orden"%>
<%@page import="java.sql.Timestamp"%>

<!DOCTYPE html>

<%
    try {
            Orden orden=new Orden();
            Proveedor proveedor = new Proveedor();
            Proveedor proveedores = proveedor.proveedores_buscarporid(Integer.valueOf(request.getParameter("id_proveedor")));
            Producto producto = new Producto();            
            Producto productos = producto.producto_buscarporid(Integer.valueOf(request.getParameter("id_producto")));
            orden.setProveedor(proveedores);            
            orden.setProducto(productos);            
            orden.setCantidad(Integer.valueOf(request.getParameter("cantidad_orden")));
            orden.setPreciounitario(Double.valueOf(request.getParameter("preciounitario_orden")));                        
            orden.setNumeroorden(request.getParameter("numero_orden"));
            orden.setEntregada(Boolean.valueOf(request.getParameter("entregada")));
            orden.setFechaentrega(Timestamp.valueOf(request.getParameter("fecha_entrega")));
            boolean result= Orden.orden_insertar(orden);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");
        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>




