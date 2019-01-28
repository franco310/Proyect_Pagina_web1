
<%-- 
    Document   : procesa_editar
    Created on : 22/01/2019, 12:59:50
    Author     : Franco-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<!DOCTYPE html>
<%
    try {
            Rol rol=new Rol();
            rol.setNombre_rol(request.getParameter("nombre_rol"));
             rol.setDescripcion(request.getParameter("descripcion"));
            rol.setRolid(Integer.valueOf(request.getParameter("codigo")));
           boolean result= Rol.rol_editar(rol);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }
%>