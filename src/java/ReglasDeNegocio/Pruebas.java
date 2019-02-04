
package ReglasDeNegocio;

import java.util.ArrayList;
import AccesoADatos.*;
import java.sql.*;
import java.util.*;

public class Pruebas {

    public static void main(String[] args) throws Exception {
        
//        BUSCAR TODOS
//            ArrayList<Categoria> lista= new ArrayList<Categoria>();
//             lista=Categoria.categoria_buscartodos();
//             if (lista.size()!=0)
//              {
//                   for(Categoria rec: lista)
//                    {
//                             System.out.println(rec.getNombre());
//                             System.out.println(rec.getDescripcion());
//                    }
//                 }
//                else
//                    {
//                    System.out.println("No hay registro");
//                    }
                 
    
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
Categoria obj=new Categoria();
obj.setNombre("Cable USB");
obj.setNombre("Cable");

 Categoria.categoria_insertar(obj);

 //Insertar venta
//Usuario obj=new Usuario();
////obj.setUsuarioid(1);
//obj.setContraseña("gdgdgd");
//obj.setCedula("ggdsgdg");
// Usuario.usuario_insertar(obj);
//    

//    EDITAR
//Venta obj=new Venta();
//obj.setClienteid(1);
//obj.setProductoid(1);
//obj.setCantidad(1);
//obj.setPreciounitarioventa(1);
//obj.setNumerofactura("1");
//
//obj.setVentaid(4);
//Venta.venta_editar(obj);
    
//  ELIMINAR
//    Producto.producto_eliminar(6);
//
//

    }}


    

