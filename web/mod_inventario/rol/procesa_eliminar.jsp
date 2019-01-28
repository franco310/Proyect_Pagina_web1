<%-- 
    Document   : procesa_eliminar
    Created on : 22/01/2019, 13:14:09
    Author     : Flavio
--%>

<%@page import="ReglasDeNegocio.Rol"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try {
       boolean result =Rol.rol_eliminar(Integer.valueOf(request.getParameter("codigo")));
        if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");

       
    } catch (Exception e) {
        out.print(e.toString());
    }
%>
