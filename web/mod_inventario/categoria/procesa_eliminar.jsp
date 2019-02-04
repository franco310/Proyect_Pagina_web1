<%-- 
    Document   : procesa_eliminar
    Created on : 20/01/2019, 12:28:41
    Author     : Franco-Pc
--%>
<%@page import="ReglasDeNegocio.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try {
       boolean result =Categoria.categoria_eliminar(Integer.valueOf(request.getParameter("codigo")));
        if (result)
       out.println("<script>; location.replace('listar.jsp?alerta=si');</script>");
        else 
       out.println("<script> ; location.replace('listar.jsp?alerta=no');</script>");

       
    } catch (Exception e) {
        out.print(e.toString());
    }
%>