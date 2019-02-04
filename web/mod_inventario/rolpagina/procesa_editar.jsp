<%-- 
    Document   : procesa_editar
    Created on : 28/01/2019, 17:19:40
    Author     : Franco-Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<!DOCTYPE html>
<%
    try {
            Rolpagina rolpagina=new Rolpagina();
            Rol rol=new Rol();
            Rol roles = rol.rol_buscarporid(Integer.valueOf(request.getParameter("rol_id")));
            rolpagina.setRol(roles);
            
            Pagina pagina=new Pagina();
            Pagina paginas= pagina.pagina_buscarporid(Integer.valueOf(request.getParameter("pagina_id")));
            rolpagina.setPagina(paginas);
            
            
            rolpagina.setRolpaginaid(Integer.valueOf(request.getParameter("codigo")));
           boolean result= Rolpagina.rolpagina_editar(rolpagina);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }
%>
