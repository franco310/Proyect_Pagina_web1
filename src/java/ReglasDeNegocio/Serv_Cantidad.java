/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ReglasDeNegocio;

import AccesoADatos.Conexion;
import AccesoADatos.Global;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



/**
 *
 * @author Franco-Pc
 */
public class Serv_Cantidad {
private int productoid;
private String nombrecategoria;
private String nombreproducto;
private int cantidadprodcomprados;
private int cantidadprodvendidos;   

    public Serv_Cantidad() {
    }

    public Serv_Cantidad(int productoid, String nombrecategoria, String nombreproducto, int cantidadprodcomprados, int cantidadprodvendidos) {
        this.productoid = productoid;
        this.nombrecategoria = nombrecategoria;
        this.nombreproducto = nombreproducto;
        this.cantidadprodcomprados = cantidadprodcomprados;
        this.cantidadprodvendidos = cantidadprodvendidos;
    }

    public int getProductoid() {
        return productoid;
    }

    public void setProductoid(int productoid) {
        this.productoid = productoid;
    }

    public String getNombrecategoria() {
        return nombrecategoria;
    }

    public void setNombrecategoria(String nombrecategoria) {
        this.nombrecategoria = nombrecategoria;
    }

    public String getNombreproducto() {
        return nombreproducto;
    }

    public void setNombreproducto(String nombreproducto) {
        this.nombreproducto = nombreproducto;
    }

    public int getCantidadprodcomprados() {
        return cantidadprodcomprados;
    }

    public void setCantidadprodcomprados(int cantidadprodcomprados) {
        this.cantidadprodcomprados = cantidadprodcomprados;
    }

    public int getCantidadprodvendidos() {
        return cantidadprodvendidos;
    }

    public void setCantidadprodvendidos(int cantidadprodvendidos) {
        this.cantidadprodvendidos = cantidadprodvendidos;
    }
    
     
        public static ArrayList<Serv_Cantidad> servicio_cantidad() throws Exception
        {
         //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Serv_Cantidad> lista= new ArrayList<Serv_Cantidad>();
          Serv_Cantidad obj= new Serv_Cantidad();
       ResultSet rs= null;
      //LLAMO LA CONEXION
      Conexion con= new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
      PreparedStatement preStm= null;
      try {
          //declaro mi sql
          String sql= "select * from public.cordenes_vs_cventas()";
          //creo mi preparedstatement
          preStm=con.creaPreparedSmt(sql);
          //ejecuto el prepardestatement y le asigno a mi resulset          
          rs= con.ejecutaPrepared(preStm);
          obj=null;
          while (rs.next()) {
              obj= new Serv_Cantidad();
              obj.setProductoid(rs.getInt("pproductoid"));
              obj.setNombrecategoria(rs.getString("pnombre"));
              obj.setNombreproducto(rs.getString("pnombreproducto"));
              obj.setCantidadprodcomprados(rs.getInt("pcantidadprodcomprados"));              
              obj.setCantidadprodvendidos(rs.getInt("pcantidadprodvendidos"));
              lista.add(obj);
          }
      } catch (SQLException e) {
          System.out.println(e.getMessage());
      }
      finally
      {
          rs.close();
          preStm.close();
          con.desconectar();
      }
            return lista;

    }
}
