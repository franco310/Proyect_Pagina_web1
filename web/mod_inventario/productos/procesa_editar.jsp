<%-- 
    Document   : procesa_editar
    Created on : ene 6, 2019, 5:44:23 p.m.
    Author     : Flavio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<!DOCTYPE html>
<%
    try {
            Producto producto=new Producto();
            producto.setNombreproducto(request.getParameter("nombre_producto"));
            producto.setProductoid(Integer.valueOf(request.getParameter("codigo")));
           boolean result= Producto.producto_editar(producto);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }
%>