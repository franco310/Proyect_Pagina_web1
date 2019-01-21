
package ReglasDeNegocio;

import java.util.ArrayList;
import AccesoADatos.*;
import java.sql.*;
import java.util.*;

public class Pruebas {

    public static void main(String[] args) throws Exception {
        
//        BUSCAR TODOS
//        ArrayList<Producto> lista= new ArrayList<Producto>();
//         lista=Producto.producto_buscartodos();
//         if (lista.size()!=0)
//          {
//               for(Producto rec: lista)
//                {
//                         System.out.println(rec.getNombreproducto());
//                }
//             }
//            else
//                {
//                System.out.println("No hay registro");
//                }
//             
    
//BUSCAR POR ID
//  ArrayList<Producto> lista= new ArrayList<Producto>();
//         lista=Producto.producto_buscarporid(2);
//         if (lista.size()!=0)
//          {
//               for(Producto rec: lista)
//                {
//                         System.out.println(rec.getNombreproducto());
//                }
//             }
//            else
//                {
//                System.out.println("No hay registro");
//                }


//  INSERTAR Producto
//Producto obj=new Producto();
//obj.setNombreproducto("Cable USB");
// Producto.producto_insertar(obj);

// Insertar venta
//Venta obj=new Venta();
//obj.setClienteid(1);
//obj.setProductoid(4);
//obj.setCantidad(5);
//obj.setPreciounitarioventa(15);
//obj.setNumerofactura("3");
// Venta.venta_insertar(obj);
    

//    EDITAR
Venta obj=new Venta();
obj.setClienteid(1);
obj.setProductoid(1);
obj.setCantidad(1);
obj.setPreciounitarioventa(1);
obj.setNumerofactura("1");

obj.setVentaid(4);
Venta.venta_editar(obj);
    
//  ELIMINAR
//    Producto.producto_eliminar(6);
//
//
    }
}
