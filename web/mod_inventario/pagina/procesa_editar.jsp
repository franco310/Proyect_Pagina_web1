
<%-- 
    Document   : procesa_editar
    Created on : 22/01/2019, 12:59:50
    Author     : Franco-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<!DOCTYPE html>
<%
    try {
            Pagina pagina=new Pagina();
            pagina.setUrl(request.getParameter("url_pagina"));
             pagina.setDescripcion(request.getParameter("descripcion"));
            pagina.setPaginaid(Integer.valueOf(request.getParameter("codigo")));
           boolean result= Pagina.pagina_editar(pagina);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }
%>