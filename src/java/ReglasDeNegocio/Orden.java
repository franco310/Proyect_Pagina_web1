/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ReglasDeNegocio;


import AccesoADatos.Comando;
import AccesoADatos.Conexion;
import AccesoADatos.Global;
import AccesoADatos.Parametro;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;



/**
 *
 * @author Flavio
 */
public class Orden {
  private int ordenid;
  private Proveedor proveedor;
  private Producto producto;
  private int cantidad; 
  private double preciounitario; 
  private String numeroorden; 
  private boolean entregada; 
  private Timestamp  fechaentrega;

    public Orden() {
    }

    public Orden(int ordenid, Proveedor proveedor, Producto producto, int cantidad, double preciounitario, String numeroorden, boolean entregada, Timestamp fechaentrega) {
        this.ordenid = ordenid;
        this.proveedor = proveedor;
        this.producto = producto;
        this.cantidad = cantidad;
        this.preciounitario = preciounitario;
        this.numeroorden = numeroorden;
        this.entregada = entregada;
        this.fechaentrega = fechaentrega;
    }

    public int getOrdenid() {
        return ordenid;
    }

    public void setOrdenid(int ordenid) {
        this.ordenid = ordenid;
    }

    public Proveedor getProveedor() {
        return proveedor;
    }

    public void setProveedor(Proveedor proveedor) {
        this.proveedor = proveedor;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPreciounitario() {
        return preciounitario;
    }

    public void setPreciounitario(double preciounitario) {
        this.preciounitario = preciounitario;
    }

    public String getNumeroorden() {
        return numeroorden;
    }

    public void setNumeroorden(String numeroorden) {
        this.numeroorden = numeroorden;
    }

    public boolean isEntregada() {
        return entregada;
    }

    public void setEntregada(boolean entregada) {
        this.entregada = entregada;
    }

    public Timestamp getFechaentrega() {
        return fechaentrega;
    }

    public void setFechaentrega(Timestamp fechaentrega) {
        this.fechaentrega = fechaentrega;
    }
    
    public static ArrayList<Orden> orden_buscartodos() throws Exception
    {
         //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Orden> lista= new ArrayList<Orden>();
          Orden obj= new Orden();
       ResultSet rs= null;
      //LLAMO LA CONEXION
      Conexion con= new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
      PreparedStatement preStm= null;

      try {
          //declaro mi sql
          String sql= "select * from ordenes_buscartodos()";
          //creo mi preparedstatement
          preStm=con.creaPreparedSmt(sql);
          //ejecuto el prepardestatement y le asigno a mi resulset
          
          rs= con.ejecutaPrepared(preStm);
          obj=null;
          while (rs.next()) {
              obj= new Orden();
              obj.setOrdenid(rs.getInt("pordenid"));
              Proveedor proveedor = new Proveedor();
              Proveedor proveedores = proveedor.proveedores_buscarporid(rs.getInt("pproveedorid"));
              obj.setProveedor(proveedores);
              Producto producto = new Producto();
              Producto productos = producto.producto_buscarporid(rs.getInt("pproductoid"));
              obj.setProducto(producto);
              obj.setCantidad(rs.getInt("pcantidad"));
              obj.setPreciounitario(rs.getDouble("ppreciounitario"));
              obj.setNumeroorden(rs.getString("pnumeroorden"));
              obj.setEntregada(rs.getBoolean("pentregada"));
              obj.setFechaentrega(rs.getTimestamp("pfechaentrega"));
              
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
    public static Orden orden_buscarporid(int piordenid) throws Exception
    {
         //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
          Orden obj= new Orden();
       ResultSet rs= null;
      //LLAMO LA CONEXION
      Conexion con= new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
      PreparedStatement preStm= null;
       
      try {
          //declaro mi sql
          String sql= "select * from public.ordenes_buscarporid(?)";
          //creo mi preparedstatement
          preStm=con.creaPreparedSmt(sql);
          //ejecuto el prepardestatement y le asigno a mi resulset
          preStm.setInt(1, piordenid);
          rs= con.ejecutaPrepared(preStm);
          obj=null;
          while (rs.next()) {
              obj= new Orden();
              Proveedor proveedor = new Proveedor();
              Proveedor proveedores = proveedor.proveedores_buscarporid(rs.getInt("pproveedorid"));
              obj.setProveedor(proveedores);
              Producto producto = new Producto();
              Producto productos = producto.producto_buscarporid(rs.getInt("pproductoid"));
              obj.setProducto(producto);
              obj.setCantidad(rs.getInt("pcantidad"));
              obj.setPreciounitario(rs.getDouble("ppreciounitario"));
              obj.setNumeroorden(rs.getString("pnumeroorden"));
              obj.setEntregada(rs.getBoolean("pentregada"));
              obj.setFechaentrega(rs.getTimestamp("pfechaentrega"));
              
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
            return obj;

    }
    
    
     public static boolean orden_insertar(Orden orden) throws Exception
  {
      boolean respuesta=false;
      Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      try {
          //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
          ArrayList<Comando> comandos = new ArrayList<Comando>();
          //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
          Comando cmd= new Comando();
          //SETEAMOS LA FUNCION AL COMAND0
          cmd.setSetenciaSql("select * from public.orden_insertar(?,?,?,?)");
          //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
          ArrayList<Parametro> parametros = new ArrayList<Parametro>();
          //llenamos el arraylist con todos los parametros
//          parametros.add(new Parametro(1, orden.getNombres()));
//          parametros.add(new Parametro(2, orden.getApellidos()));
//          parametros.add(new Parametro(3, orden.getTelefono()));
//          parametros.add(new Parametro(4, orden.getEmail()));

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
    
     public static boolean orden_editar(Orden orden) throws Exception
  {
      boolean respuesta=false;
      Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      try {
          //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
          ArrayList<Comando> comandos = new ArrayList<Comando>();
          //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
          Comando cmd= new Comando();
          //SETEAMOS LA FUNCION AL COMAND0
          cmd.setSetenciaSql("select * from public.orden_editar(?,?,?,?,?)");
          //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
          ArrayList<Parametro> parametros = new ArrayList<Parametro>();
          //llenamos el arraylist con todos los parametros

          parametros.add(new Parametro(1, orden.getOrdenid()));
//          parametros.add(new Parametro(2, orden.getNombres()));
//          parametros.add(new Parametro(3, orden.getApellidos()));
//          parametros.add(new Parametro(4, orden.getTelefono()));
//          parametros.add(new Parametro(5, orden.getEmail()));
        
          
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
     
      public static boolean orden_eliminar(int pscactbevidenid) throws Exception
  {
      boolean respuesta=false;
      Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
      try {
          //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
          ArrayList<Comando> comandos = new ArrayList<Comando>();
          //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
          Comando cmd= new Comando();
          //SETEAMOS LA FUNCION AL COMAND0
          cmd.setSetenciaSql("select * from public.orden_eliminar(?)");
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
