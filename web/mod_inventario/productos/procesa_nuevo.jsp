<%@page import="ReglasDeNegocio.*"%>
<%@page import="java.sql.Time"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>

<!DOCTYPE html>

<%
    try {
            Producto producto=new Producto();
            producto.setNombreproducto(request.getParameter("nombre_producto"));
            Categoria categoria = new Categoria();
            Categoria categorias = categoria.categoria_buscarporid(Integer.valueOf(request.getParameter("categoriaid")));
            producto.setCategoria(categorias);
            producto.setStock(Integer.valueOf(request.getParameter("stock")));
            producto.setPrecio(Double.valueOf(request.getParameter("precio")));
           boolean result= Producto.producto_insertar(producto);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");
        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
Fin de la conversación
Escribe un mensaje...



