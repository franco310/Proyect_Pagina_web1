/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ReglasDeNegocio;

/**
 *
 * @author Flavio
 */
public class Proveedor {
    private int proveedorid;
    private String nombreproveedor;
    private String direccion;
    private String telefono;

    public Proveedor() {
    }

    public Proveedor(int proveedorid, String nombreproveedor, String direccion, String telefono) {
        this.proveedorid = proveedorid;
        this.nombreproveedor = nombreproveedor;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public int getProveedorid() {
        return proveedorid;
    }

    public void setProveedorid(int proveedorid) {
        this.proveedorid = proveedorid;
    }

    public String getNombreproveedor() {
        return nombreproveedor;
    }

    public void setNombreproveedor(String nombreproveedor) {
        this.nombreproveedor = nombreproveedor;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    
}
