/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interface.ServiciosByServiciosCRUD;
import Modelo.DDL;
import Modelo.tbEquipoByServicios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lab 1
 */
public class tbEquipoByServiciosDAO implements ServiciosByServiciosCRUD {
    Conexion cnx= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    tbEquipoByServicios ESDAO=new tbEquipoByServicios();

    @Override
    public List listar() {        
        ArrayList<tbEquipoByServicios> list= new ArrayList();
        String sql;
        sql = "SELECT eqsev_Id, serv_Id, Inv_Id, eqsev_Estado, eqsev_UsuarioCrea, eqsev_FechaCrea, eqsev_UsuarioModifica, eqsev_FechaModifica " +
               "FROM  [Fact].[tbEquipoByServicios]";
        try{
            con = cnx.Conectar();
            ps=con.prepareCall(sql);
            rs=ps.executeQuery();
            
            while (rs.next()){
                ESDAO = new tbEquipoByServicios(rs.getInt("Eqsev_Id"),
                                            rs.getInt("serv_Id"),
                                            rs.getInt("Inv_Id"),
                                            rs.getInt("Eqsev_Estado"),
                                            rs.getInt("Eqsev_UsuarioCrea"),
                                            rs.getString("Eqsev_FechaCrea"),
                                            rs.getInt("Eqsev_UsuarioModifica"),
                                            rs.getString("Eqsev_UsuarioModifica"));
                list.add(ESDAO);                
            }
            ESDAO=new tbEquipoByServicios();
        }catch(SQLException ex){
            ex.getMessage();
        }catch(Exception e){
            e.getMessage();
        }
        return list;
    }
    @Override
    public boolean add(tbEquipoByServicios ES) {
        String sql;
        sql = "EXEC dbo.UDP_Fact_tbEquipoByServicios_Insert " + ES.getServ_Id()+","+ES.getInv_Id()+", "+ ES.getEqsev_UsuarioCrea();
        try{
            con = cnx.Conectar();
            ps=con.prepareCall(sql);
            rs=ps.executeQuery();
            
            return true;
        }catch(SQLException ex){
            ex.getMessage();
            //con=cnx.Conectar();
            return false;
        }catch(Exception e){
            e.getMessage();
            //con=cnx.Conectar();
            return false;
        }
    }
    @Override
    public boolean edit(tbEquipoByServicios ES) {
        String sql;
        sql = "EXEC dbo.UDP_Fact_tbEquipoByServicios_Update "+ES.getEqsev_Id()+", "+ ES.getServ_Id()+", " + ES.getInv_Id()+", "+ ES.getEqsev_UsuarioModifica();
        try{
            con = cnx.Conectar();
            ps=con.prepareCall(sql);
            rs=ps.executeQuery();
            
            return true;
        }catch(SQLException ex){
            ex.getMessage();
            //con=cnx.Conectar();
            return false;
        }catch(Exception e){
            e.getMessage();
            //con=cnx.Conectar();
            return false;
        }
    }
    @Override
    public boolean delete(int ID) {
        String sql;
        sql = "EXEC dbo.UDP_Fact_tbEquipoByServicios_Delete " + ID;
        try{
            con = cnx.Conectar();
            ps=con.prepareCall(sql);
            rs=ps.executeQuery();            
            return true;
        }catch(SQLException ex){
            ex.getMessage();
            //con=cnx.Conectar();
            return false;
        }catch(Exception e){
            e.getMessage();
            //con=cnx.Conectar();
            return false;
        }
    }
    @Override
public List listarDDLInventario() {
        DDL DDL = new DDL();
        ArrayList<DDL> list= new ArrayList();
        String sql;
        sql = "SELECT Inv_Id, Inv_Descripcion " +
                "FROM [Inv].[tbInventario_hospital]";
        try{
            con = cnx.Conectar();
            ps=con.prepareCall(sql);
            rs=ps.executeQuery();
            
            while (rs.next()){
                DDL = new DDL(rs.getInt("Inv_Id"),
                                            rs.getString("Inv_Descripcion"));
                list.add(DDL);                
            }
            DDL = new DDL();
    }catch(SQLException ex){
        ex.getMessage();
    }catch(Exception e){
        e.getMessage();
    }
    return list;
}
@Override
public List listarDDLServicio() {
    DDL DDL = new DDL();
    ArrayList<DDL> list= new ArrayList();
    String sql;
    sql = "select serv_Id, serv_Descripcion " +
            "from [Fact].[tbCatalogoServiciosMedicos]";
    try{
        con = cnx.Conectar();
        ps=con.prepareCall(sql);
        rs=ps.executeQuery();

        while (rs.next()){
            DDL = new DDL(rs.getInt("serv_Id"),
                                        rs.getString("serv_Descripcion"));
            list.add(DDL);                
        }
        DDL = new DDL();
    }catch(SQLException ex){
        ex.getMessage();
    }catch(Exception e){
        e.getMessage();
    }
    return list;
    }            
}
