
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
public class Serv_Monto {
        private int productoid;    
        private String nombrecategoria;        
        private String nombreproducto;        
        private double montoprodcompados;           
        private double montoprodvendidos;

    public Serv_Monto() {
    }

    public Serv_Monto(int productoid, String nombrecategoria, String nombreproducto, double montoprodcompados, double montoprodvendidos) {
        this.productoid = productoid;
        this.nombrecategoria = nombrecategoria;
        this.nombreproducto = nombreproducto;
        this.montoprodcompados = montoprodcompados;
        this.montoprodvendidos = montoprodvendidos;
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

    public double getMontoprodcompados() {
        return montoprodcompados;
    }

    public void setMontoprodcompados(double montoprodcompados) {
        this.montoprodcompados = montoprodcompados;
    }

    public double getMontoprodvendidos() {
        return montoprodvendidos;
    }

    public void setMontoprodvendidos(double montoprodvendidos) {
        this.montoprodvendidos = montoprodvendidos;
    }


        public static ArrayList<Serv_Monto> servicio_monto() throws Exception
        {
         //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Serv_Monto> lista= new ArrayList<Serv_Monto>();
          Serv_Monto obj= new Serv_Monto();
       ResultSet rs= null;
      //LLAMO LA CONEXION
      Conexion con= new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
      PreparedStatement preStm= null;
      try {
          //declaro mi sql
          String sql= "select * from public.mordenes_vs_mventas()";
          //creo mi preparedstatement
          preStm=con.creaPreparedSmt(sql);
          //ejecuto el prepardestatement y le asigno a mi resulset          
          rs= con.ejecutaPrepared(preStm);
          obj=null;
          while (rs.next()) {
              obj= new Serv_Monto();
              obj.setProductoid(rs.getInt("pproductoid"));
              obj.setNombrecategoria(rs.getString("pnombre"));
              obj.setNombreproducto(rs.getString("pnombreproducto"));
              obj.setMontoprodcompados(rs.getInt("pmontoprodcomprados"));              
              obj.setMontoprodvendidos(rs.getInt("pmontoprodvendidos"));
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

    
    
    
    
    
    
    

