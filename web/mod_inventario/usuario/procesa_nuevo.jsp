<%-- 
    Document   : procesa_nuevo
    Created on : 22/01/2019, 12:50:36
    Author     : Franco-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>

<!DOCTYPE html>

<%
    try {
            Usuario usuario=new Usuario();
            usuario.setNombre_usuario(request.getParameter("nombre_usuario"));
            usuario.setContraseña(request.getParameter("contraseña"));
            usuario.setCedula(request.getParameter("cedula"));
           
           boolean result= Usuario.usuario_insertar(usuario);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");
        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>