/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servicios.web;

import ReglasDeNegocio.Serv_Cantidad;
import ReglasDeNegocio.Serv_Monto;
import ReglasDeNegocio.Serv_Stock;
import java.util.ArrayList;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.PathParam;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author Franco-Pc
 */
@Path("generic")
public class GenericResource {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of GenericResource
     */
    public GenericResource() {
    }

    /**
     * Retrieves representation of an instance of Servicios.web.GenericResource
     * @return an instance of java.lang.String
     */
    @GET
    //@Produces("application/xml")
    @Produces(MediaType.APPLICATION_JSON)
    @Path("Serv_Stock/list")

    public ArrayList<Serv_Stock> getXmls()throws Exception {
    ArrayList<Serv_Stock> lista=new ArrayList<Serv_Stock>();
    lista =Serv_Stock.servicio_stock();
    return lista;

    }
    
    
    
     @GET
    //@Produces("application/xml")
    @Produces(MediaType.APPLICATION_JSON)
    @Path("Serv_Cantidad/list")

    public ArrayList<Serv_Cantidad> getXmlc()throws Exception {
    ArrayList<Serv_Cantidad> lista=new ArrayList<Serv_Cantidad>();
    lista =Serv_Cantidad.servicio_cantidad();
    return lista;
//    public String getXml() {
//        //TODO return proper representation object
//        throw new UnsupportedOperationException();
//    }

    /**
     * PUT method for updating or creating an instance of GenericResource
     * @param content representation for the resource
     * @return an HTTP response with content of the updated or created resource.
     */
       
}
       @GET
    //@Produces("application/xml")
    @Produces(MediaType.APPLICATION_JSON)
    @Path("Serv_Monto/list")

    public ArrayList<Serv_Monto> getXmlm()throws Exception {
    ArrayList<Serv_Monto> lista=new ArrayList<Serv_Monto>();
    lista =Serv_Monto.servicio_monto();
    return lista;
    
    }
      
    @PUT
    @Consumes(MediaType.APPLICATION_XML)
    public void putXml(String content) {
    }
}