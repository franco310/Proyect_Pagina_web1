/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package AccesoADatos;
import java.sql.*;
import java.util.ArrayList;

/**
 *on
 * @author paula
 */
public class Conexion {
    public  String driver;
	public  String url;
	public  String user;
	public String pass;
        public Connection con;

	public Conexion(){
	}

	public String getDriver(){
		return this.driver;
	}

	public String getUrl(){
		return this.url;
	}
	public String getUser(){
		return this.user;
	}

	public void setUser(String user){
		this.user=user;
	}

	public void setPassword(String pass){
		this.pass=pass;
	}

	public  Conexion(String pdriver, String pURL, String pusuario,String pclave ){
            try {
                this.driver=pdriver;
                this.url=pURL;
                this.user=pusuario;
                this.pass= pclave;
                Class.forName(this.driver);
                con= DriverManager.getConnection(this.url,this.user, this.pass);
            } catch (Exception e) {
                
            }
	}

        public void desconectar() throws Exception
        {
            try {
                con.close();
            } catch (Exception e) {
                throw e;
            }
        }


     
       public ResultSet ejecutaPrepared(PreparedStatement prStm) throws Exception
        {
       ResultSet rts=null;
            try {
              rts =prStm.executeQuery();

        } catch (SQLException exConec) {
                throw  new Exception(exConec.getMessage());
        }
        return rts;
        }


         public PreparedStatement creaPreparedSmt(String sql) throws Exception
        {
         PreparedStatement prStm=null;
         try {
            try {
              prStm = con.prepareStatement(sql);
          } catch (SQLException exConec) {
           throw  new Exception(exConec.getMessage());
            }
         }
        catch (ClassNotFoundException exCarga) {
          throw  new Exception(exCarga.getMessage());
        }
         return prStm;
        }

       public boolean  ejecutaPreparedTransaccion(ArrayList<Comando> lstComandos) throws Exception
        {
            boolean respuesta=false;
            try {
                
                if (con.getAutoCommit()) {
                    con.setAutoCommit(false);
                }
                for (Comando comando : lstComandos) {
                    PreparedStatement ptrs = con.prepareStatement(comando.getSetenciaSql());
                    for (Parametro parametro : comando.getLstParametros()) {
                        ptrs.setObject(parametro.getPosicion(), parametro.getValor());
                    }
                    ResultSet rst = ptrs.executeQuery();
                    if (rst.next()) {
                        String bandera = rst.getString(1);
                        respuesta = bandera.equals("t")?true:false;
                    }
                }
                con.commit();
                con.close();
            }
         catch (SQLException exConec) {
             con.rollback();
                throw  new Exception(exConec.getMessage());
        }
        return respuesta;
        }
}
