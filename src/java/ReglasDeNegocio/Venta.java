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
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;

/**
 *
 * @author USER
 */
public class Venta {
    private int ventaid;
    private Cliente cliente;
    private Producto producto;
    private int cantidad;
    private double preciounitarioventa;
    private Time fechatransaccion;
    private String numerofactura;    

    public Venta() {
    }

    public Venta(int ventaid, Cliente cliente, Producto producto, int cantidad, double preciounitarioventa, Time fechatransaccion, String numerofactura) {
        this.ventaid = ventaid;
        this.cliente = cliente;
        this.producto = producto;
        this.cantidad = cantidad;
        this.preciounitarioventa = preciounitarioventa;
        this.fechatransaccion = fechatransaccion;
        this.numerofactura = numerofactura;
    }

    /**
     * @return the ventaid
     */
    public int getVentaid() {
        return ventaid;
    }

    /**
     * @param ventaid the ventaid to set
     */
    public void setVentaid(int ventaid) {
        this.ventaid = ventaid;
    }

    /**
     * @return the cliente
     */
    public Cliente getCliente() {
        return cliente;
    }

    /**
     * @param cliente the cliente to set
     */
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    /**
     * @return the producto
     */
    public Producto getProducto() {
        return producto;
    }

    /**
     * @param producto the producto to set
     */
    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    /**
     * @return the cantidad
     */
    public int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the preciounitarioventa
     */
    public double getPreciounitarioventa() {
        return preciounitarioventa;
    }

    /**
     * @param preciounitarioventa the preciounitarioventa to set
     */
    public void setPreciounitarioventa(double preciounitarioventa) {
        this.preciounitarioventa = preciounitarioventa;
    }

    /**
     * @return the fechatransaccion
     */
    public Time getFechatransaccion() {
        return fechatransaccion;
    }

    /**
     * @param fechatransaccion the fechatransaccion to set
     */
    public void setFechatransaccion(Time fechatransaccion) {
        this.fechatransaccion = fechatransaccion;
    }

    /**
     * @return the numerofactura
     */
    public String getNumerofactura() {
        return numerofactura;
    }

    /**
     * @param numerofactura the numerofactura to set
     */
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
              obj = new Venta();
              obj.setVentaid(rs.getInt("pventaid"));
              Cliente cliente= new Cliente();
              Cliente clientes = cliente.cliente_buscarporid(rs.getInt("pclienteid"));
              obj.setCliente(clientes);
              Producto producto= new Producto();
              Producto productos = producto.producto_buscarporid(rs.getInt("pproductoid"));
              obj.setProducto(productos);
              obj.setCantidad(rs.getInt("pcantidad"));
              obj.setPreciounitarioventa(rs.getDouble("ppreciounitarioventa"));
              obj.setFechatransaccion(rs.getTime("pfechatransaccion"));
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
    
    public static Venta venta_buscarporid(int pscactbevidenid) throws Exception
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
          String sql= "select * from public.venta_buscarporid(?)";
          //creo mi preparedstatement
          preStm=con.creaPreparedSmt(sql);
          //ejecuto el prepardestatement y le asigno a mi resulset
          preStm.setInt(1, pscactbevidenid);
          rs= con.ejecutaPrepared(preStm);
          obj=null;
          while (rs.next()) {
              obj = new Venta();
              obj.setVentaid(rs.getInt("pventaid"));
              Cliente cliente= new Cliente();
              Cliente clientes = cliente.cliente_buscarporid(rs.getInt("pclienteid"));
              obj.setCliente(clientes);
              Producto producto= new Producto();
              Producto productos = producto.producto_buscarporid(rs.getInt("pproductoid"));
              obj.setProducto(productos);
              obj.setCantidad(rs.getInt("pcantidad"));
              obj.setPreciounitarioventa(rs.getDouble("ppreciounitarioventa"));
              obj.setFechatransaccion(rs.getTime("pfechatransaccion"));
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
            return obj;

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
          cmd.setSetenciaSql("select * from public.venta_insertar(?,?,?,?,?,?)");
          //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
          ArrayList<Parametro> parametros = new ArrayList<Parametro>();
          //llenamos el arraylist con todos los parametros
          parametros.add(new Parametro(1, venta.getCliente().getClienteid()));
          parametros.add(new Parametro(2, venta.getProducto().getProductoid()));
          parametros.add(new Parametro(3, venta.getCantidad()));
          parametros.add(new Parametro(4, venta.getPreciounitarioventa()));
          parametros.add(new Parametro(5, venta.getFechatransaccion()));
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
          cmd.setSetenciaSql("select * from public.venta_editar(?,?,?,?,?,?,?)");
          //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
          ArrayList<Parametro> parametros = new ArrayList<Parametro>();
          //llenamos el arraylist con todos los parametros

          parametros.add(new Parametro(1, venta.getVentaid()));
          parametros.add(new Parametro(2, venta.getCliente().getClienteid()));
          parametros.add(new Parametro(3, venta.getProducto().getProductoid()));
          parametros.add(new Parametro(4, venta.getCantidad()));
          parametros.add(new Parametro(5, venta.getPreciounitarioventa()));
          parametros.add(new Parametro(6, venta.getFechatransaccion()));
          parametros.add(new Parametro(7, venta.getNumerofactura()));
        
          
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



    
    
    
    



