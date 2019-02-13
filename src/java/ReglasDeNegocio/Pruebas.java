
package ReglasDeNegocio;

import java.util.ArrayList;
import AccesoADatos.*;
import java.sql.*;
import java.util.*;

public class Pruebas {

    public static void main(String[] args) throws Exception {
        
//        BUSCAR TODOS
            ArrayList<Serv_Stock> lista= new ArrayList<Serv_Stock>();
             lista=Serv_Stock.servicio_stock();
             if (lista.size()!=0)
              {
                   for(Serv_Stock rec: lista)
                    {
                             
                             System.out.println(rec.getNombrecategoria());
                             System.out.println(rec.getNombreproducto());
                             System.out.println(rec.getStock());
                            // System.out.println(rec.getCantidadprodvendidos());
                             
                    }
                 }
                else
                    {
                    System.out.println("No hay registro");
                    }
                 
    
//BUSCAR POR ID
// ArrayList<Usuario> lista= new ArrayList<Usuario>();
//         lista=Usuario.usuario_buscarporid(5);
//         if (lista.size()!=0)
//          {
//               for(Usuario rec: lista)
//                {
//                         System.out.println(rec.getNombre_usuario());
//                }
//             }
//            else
//                {
//                System.out.println("No hay registro");
//                }
//
//
//    }

//  INSERTAR Producto
//Categoria obj=new Categoria();
//obj.setNombre("Cable USB");
//obj.setNombre("Cable");

 

 //Insertar venta
//Usuario obj=new Usuario();
////obj.setUsuarioid(1);
//obj.setContraseña("gdgdgd");
//obj.setCedula("ggdsgdg");
// Usuario.usuario_insertar(obj);
//    

//    EDITAR
//Producto obj=new Producto();
//obj.setProductoid(13);
//obj.setNombreproducto("jjjjj");
//obj.setCategoria(10);
//obj.setPrecio(1000);
//obj.setStock(89);
        
        
//
//obj.setVentaid(4);
//Venta.venta_editar(obj);
    
//  ELIMINAR
//    Producto.producto_eliminar(6);
//
//

    }}


    

