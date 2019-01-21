<%-- 
    Document   : procesa_editar
    Created on : 14/01/2019, 17:45:53
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
            cliente.setClienteid(Integer.valueOf(request.getParameter("codigo")));
           boolean result= Cliente.cliente_editar(cliente);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }
%>
