<%-- 
    Document   : procesa_nuevo
    Created on : 14/01/2019, 17:09:57
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
           boolean result= Proveedor.proveedor_insertar(proveedor);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");
        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>