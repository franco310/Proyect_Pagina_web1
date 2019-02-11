<%-- 
    Document   : procesa_editar
    Created on : 14/01/2019, 17:45:53
    Author     : Flavio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<!DOCTYPE html>
<%
    try {
            Proveedor proveedor=new Proveedor();
            proveedor.setNombreproveedor(request.getParameter("nombres_proveedor"));
            proveedor.setDireccion(request.getParameter("direccion_proveedor"));
            proveedor.setTelefono(request.getParameter("telefono_proveedor"));
            proveedor.setProveedorid(Integer.valueOf(request.getParameter("codigo")));
           boolean result= Proveedor.proveedor_editar(proveedor);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }
%>
