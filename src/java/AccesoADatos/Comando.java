/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AccesoADatos;

import java.util.ArrayList;
/**
 *
 * @author DIEGO_PALACIOS
 */
public class Comando {
    private String setenciaSql;
    private ArrayList<Parametro> lstParametros;
    public Comando()
    {
        setenciaSql="";
        lstParametros= new ArrayList<Parametro>();
    }

    /**
     * @return the setenciaSql
     */
    public String getSetenciaSql() {
        return setenciaSql;
    }

    /**
     * @param setenciaSql the setenciaSql to set
     */
    public void setSetenciaSql(String setenciaSql) {
        this.setenciaSql = setenciaSql;
    }

    /**
     * @return the lstParametros
     */
    public ArrayList<Parametro> getLstParametros() {
        return lstParametros;
    }

    /**
     * @param lstParametros the lstParametros to set
     */
    public void setLstParametros(ArrayList<Parametro> lstParametros) {
        this.lstParametros = lstParametros;
    }
    

}
