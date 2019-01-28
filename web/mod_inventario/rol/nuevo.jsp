<%-- 
    Document   : nuevo
    Created on : 22/01/2019, 12:51:14
    Author     : Flavio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        
        
          <form method="POST"  action="procesa_nuevo.jsp">
           <input type="text" class="form-control" placeholder="nombre_rol" required id="nombre_rol" name="nombre_rol"/>
          <input type="text" class="form-control" placeholder="Descripcion" required id="descripcion" name="descripcion"/>
          
          
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
    </body>
</html>
