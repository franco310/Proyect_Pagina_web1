package ReglasDeNegocio;
import AccesoADatos.*;
import java.sql.*;
import java.util.*;

public class Venta {
    private int ventaid;
    private int clienteid;
    private int productoid;
    private int cantidad;
    private double preciounitarioventa;
    private String numerofactura;

    public Venta() {
    }

    public Venta(int ventaid, int clienteid, int productoid, int cantidad, double preciounitarioventa, String numerofactura) {
        this.ventaid = ventaid;
        this.clienteid = clienteid;
        this.productoid = productoid;
        this.cantidad = cantidad;
        this.preciounitarioventa = preciounitarioventa;
        this.numerofactura = numerofactura;
    }
     
    public int getVentaid() {
        return ventaid;
    }

    public void setVentaid(int ventaid) {
        this.ventaid = ventaid;
    }

    public int getClienteid() {
        return clienteid;
    }

    public void setClienteid(int clienteid) {
        this.clienteid = clienteid;
    }

    public int getProductoid() {
        return productoid;
    }

    public void setProductoid(int productoid) {
        this.productoid = productoid;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPreciounitarioventa() {
        return preciounitarioventa;
    }

    public void setPreciounitarioventa(double preciounitarioventa) {
        this.preciounitarioventa = preciounitarioventa;
    }

    public String getNumerofactura() {
        return numerofactura;
    }

    public void setNumerofactura(String numerofactura) {
        this.numerofactura = numerofactura;
    }
   
    
   
    
    public static ArrayList<Venta> venta_buscartodos() throws Exception
    {
         //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Venta> lista= new ArrayList<Venta>();
          Venta obj= new Venta();
       ResultSet rs= null;
      //LLAMO LA CONEXION
      Conexion con= new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
      PreparedStatement preStm= null;

      try {
          //declaro mi sql
          String sql= "select * from public.venta_buscartodos()";
          //creo mi preparedstatement
          preStm=con.creaPreparedSmt(sql);
          //ejecuto el prepardestatement y le asigno a mi resulset
          
          rs= con.ejecutaPrepared(preStm);
          obj=null;
          while (rs.next()) {
              obj= new Venta();
              obj.setProductoid(rs.getInt("pventaid"));
              obj.setClienteid(rs.getInt("pclienteid"));
              obj.setProductoid(rs.getInt("pproductoid"));
              obj.setCantidad(rs.getInt("pcantidad"));
              obj.setPreciounitarioventa(rs.getFloat("ppreciounitarioventa"));
              obj.setNumerofactura(rs.getString("pnumerofactura"));
              
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
    
    public static ArrayList<Venta> venta_buscarporid(int piproductoid) throws Exception
    {
         //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Venta> lista= new ArrayList<Venta>();
          Venta obj= new Venta();
       ResultSet rs= null;
      //LLAMO LA CONEXION
      Conexion con= new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
      PreparedStatement preStm= null;
       
      try {
          //declaro mi sql
          String sql= "select * from public.producto_buscarporid(?)";
          //creo mi preparedstatement
          preStm=con.creaPreparedSmt(sql);
          //ejecuto el prepardestatement y le asigno a mi resulset
          preStm.setInt(1, piproductoid);
          rs= con.ejecutaPrepared(preStm);
          obj=null;
          while (rs.next()) {
              obj= new Venta();
              obj.setProductoid(rs.getInt("pventaid"));
              obj.setClienteid(rs.getInt("pclienteid"));
              obj.setProductoid(rs.getInt("pproductoid"));
              obj.setCantidad(rs.getInt("pcantidad"));
              obj.setPreciounitarioventa(rs.getFloat("ppreciounitarioventa"));
              obj.setNumerofactura(rs.getString("pnumerofactura"));
              
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
    
    
     public static boolean venta_insertar(Venta venta) throws Exception
  {
      boolean respuesta=false;
      Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      try {
          //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
          ArrayList<Comando> comandos = new ArrayList<Comando>();
          //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
          Comando cmd= new Comando();
          //SETEAMOS LA FUNCION AL COMAND0
          cmd.setSetenciaSql("select * from public.venta_insertar(?,?,?,?,?)");
          //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
          ArrayList<Parametro> parametros = new ArrayList<Parametro>();
          //llenamos el arraylist con todos los parametros
          parametros.add(new Parametro(1, venta.getClienteid()));
          parametros.add(new Parametro(2, venta.getProductoid()));
          parametros.add(new Parametro(3, venta.getCantidad()));
          parametros.add(new Parametro(4, venta.getPreciounitarioventa()));
          parametros.add(new Parametro(5, venta.getNumerofactura()));
          

          //llenar el comando con los parametros
          cmd.setLstParametros(parametros);
          comandos.add(cmd);
          //llamamos al funcion que ejecuta la transaccion en la base de datos
          respuesta= con.ejecutaPreparedTransaccion(comandos);

      } catch (SQLException e) {
          throw  new Exception(e.getMessage());
      }
      finally
      {
          con.desconectar();
      }
      return respuesta;

  }
    
     public static boolean venta_editar(Venta venta) throws Exception
  {
      boolean respuesta=false;
      Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      try {
          //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
          ArrayList<Comando> comandos = new ArrayList<Comando>();
          //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
          Comando cmd= new Comando();
          //SETEAMOS LA FUNCION AL COMAND0
          cmd.setSetenciaSql("select * from public.venta_editar(?,?,?,?,?,?)");
          //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
          ArrayList<Parametro> parametros = new ArrayList<Parametro>();
          //llenamos el arraylist con todos los parametros

          parametros.add(new Parametro(1, venta.getVentaid()));
          parametros.add(new Parametro(2, venta.getClienteid()));
          parametros.add(new Parametro(3, venta.getProductoid()));
          parametros.add(new Parametro(4, venta.getCantidad()));
          parametros.add(new Parametro(5, venta.getPreciounitarioventa()));
          parametros.add(new Parametro(6, venta.getNumerofactura()));
        
          
          //llenar el comando con los parametros
          cmd.setLstParametros(parametros);
          comandos.add(cmd);
          //llamamos al funcion que ejecuta la transaccion en la base de datos
          respuesta= con.ejecutaPreparedTransaccion(comandos);

      } catch (SQLException e) {
          throw  new Exception(e.getMessage());
      }
      finally
      {
          con.desconectar();
      }
      return respuesta;

  }
     
      public static boolean venta_eliminar(int pscactbevidenid) throws Exception
  {
      boolean respuesta=false;
      Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      try {
          //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
          ArrayList<Comando> comandos = new ArrayList<Comando>();
          //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
          Comando cmd= new Comando();
          //SETEAMOS LA FUNCION AL COMAND0
          cmd.setSetenciaSql("select * from public.venta_eliminar(?)");
          //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
          ArrayList<Parametro> parametros = new ArrayList<Parametro>();
          //llenamos el arraylist con todos los parametros
          parametros.add(new Parametro(1, pscactbevidenid));
          //llenar el comando con los parametros
          cmd.setLstParametros(parametros);
          comandos.add(cmd);
          //llamamos al funcion que ejecuta la transaccion en la base de datos
          respuesta= con.ejecutaPreparedTransaccion(comandos);

      } catch (SQLException e) {
          throw  new Exception(e.getMessage());
      }
            finally
      {
          con.desconectar();
      }
      return respuesta;

  }

    

  
}