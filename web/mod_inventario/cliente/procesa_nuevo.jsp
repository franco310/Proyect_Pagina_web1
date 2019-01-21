<%-- 
    Document   : procesa_nuevo
    Created on : 14/01/2019, 17:09:57
    Author     : Flavio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>

<!DOCTYPE html>

<%
    try {
            Cliente cliente=new Cliente();
            cliente.setNombres(request.getParameter("nombres_cliente"));
            cliente.setApellidos(request.getParameter("apellidos_cliente"));
            cliente.setTelefono(request.getParameter("telefono_cliente"));
            cliente.setEmail(request.getParameter("email_cliente"));
           boolean result= Cliente.cliente_insertar(cliente);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");
        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>