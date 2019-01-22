<%-- 
    Document   : procesa_editar
    Created on : 22/01/2019, 12:59:50
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
            usuario.setUsuarioid(Integer.valueOf(request.getParameter("codigo")));
           boolean result= Usuario.usuario_editar(usuario);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }
%>