<%-- 
    Document   : procesa_editar
    Created on : 20/01/2019, 12:20:32
    Author     : Franco-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<!DOCTYPE html>
<%
    try {
            Categoria categoria=new Categoria();
            categoria.setNombre(request.getParameter("nombre_categoria"));
            categoria.setDescripcion(request.getParameter("descripcion"));
            categoria.setCategoriaid(Integer.valueOf(request.getParameter("codigo")));
           boolean result= Categoria.categoria_editar(categoria);
             if (result)
                out.println("<script> ; location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> ; location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
