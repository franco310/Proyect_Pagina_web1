<%-- 
    Document   : editar
    Created on : 25-ene-2019, 17:02:22
    Author     : francoPC
--%>

<%@page import="ReglasDeNegocio.Usuario"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
   Usuario usuario= new Usuario();
%>
<%
    
    try {        
        String nombre1= request.getParameter("nombre");
        String clave1= request.getParameter("clave");

        //String claveencritada=StringEncrypter.StringEncrypter(clave1);
        //out.print("<script>alert("+claveencritada+");</script>");
        
        usuario= Usuario.usuario_buscar_por_credenciales(nombre1, clave1);
        
        if(usuario!=null){
            session.setAttribute("nombre",usuario.getNombre_usuario());
            response.sendRedirect("/Proyect_Pagina_web1/Menu/menu2.jsp");
            //out.println("<script>  location.replace('index.jsp');</script>");
            
        }else{
            out.println("<script>  location.replace('Login.jsp');</script>");
            if(request.getParameter("cerrar")!=null){
            session.invalidate();      
           
            }
        }
        } catch (Exception e) {
        }
   
   
%>
