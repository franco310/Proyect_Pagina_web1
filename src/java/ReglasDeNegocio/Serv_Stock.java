/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ReglasDeNegocio;

import AccesoADatos.Conexion;
import AccesoADatos.Global;
import com.google.gson.Gson;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Franco-Pc
 */
public class Serv_Stock {

    

    
    
   private int  productoid;
   private String nombrecategoria;
   private String  nombreproducto;
   private int stock;

    public Serv_Stock() {
    }

    public Serv_Stock(int productoid, String nombrecategoria, String nombreproducto, int stock) {
        this.productoid = productoid;
        this.nombrecategoria = nombrecategoria;
        this.nombreproducto = nombreproducto;
        this.stock = stock;
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

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    
    public static ArrayList<Serv_Stock> servicio_stock() throws Exception
        {
         //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Serv_Stock> lista= new ArrayList<Serv_Stock>();
          Serv_Stock obj= new Serv_Stock();
       ResultSet rs= null;
      //LLAMO LA CONEXION
      Conexion con= new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
      PreparedStatement preStm= null;
      try {
          //declaro mi sql
          String sql= "select * from public.stock_productos()";
          //creo mi preparedstatement
          preStm=con.creaPreparedSmt(sql);
          //ejecuto el prepardestatement y le asigno a mi resulset          
          rs= con.ejecutaPrepared(preStm);
          obj=null;
          while (rs.next()) {
              obj= new Serv_Stock();
              obj.setProductoid(rs.getInt("pproductoid"));
              obj.setNombrecategoria(rs.getString("pnombre"));
              obj.setNombreproducto(rs.getString("pnombreproducto"));
              obj.setStock(rs.getInt("pstock"));              
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
    
    
    public static String  servicio_psjson() throws Exception
    {
        ArrayList<Serv_Stock> lista= new ArrayList<Serv_Stock>();
       lista= servicio_stock();
       
    Gson gson = new Gson();
    StringBuilder sb = new StringBuilder();
    for(Serv_Stock d : lista) {
        sb.append(gson.toJson(d));
    }
    return sb.toString();
}

}
