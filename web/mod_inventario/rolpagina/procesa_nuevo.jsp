<%-- 
    Document   : procesa_nuevo
    Created on : 28/01/2019, 17:40:24
    Author     : Franco-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>

<!DOCTYPE html>

<%
    try {
           Rolpagina rolpagina=new Rolpagina();
           Rol rol = new Rol();
           Rol rols = rol.rol_buscarporid(Integer.valueOf(request.getParameter("rolid")));
           rolpagina.setRol(rols);
           Pagina pagina = new Pagina();
           Pagina paginas = pagina.pagina_buscarporid(Integer.valueOf(request.getParameter("paginaid")));
           rolpagina.setPagina(paginas);
           boolean result= Rolpagina.rolpagina_insertar(rolpagina);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");
        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>