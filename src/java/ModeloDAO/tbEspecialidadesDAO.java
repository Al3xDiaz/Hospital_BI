/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interface.EspecialidadesCRUD;
import Modelo.tbEspecialidades;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alex Diaz
 */
public class tbEspecialidadesDAO implements EspecialidadesCRUD {
    Conexion cnx= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    tbEspecialidades Esp=new tbEspecialidades();

    @Override
    public List listar() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    ArrayList<tbEspecialidades> list= new ArrayList();
        String sql;
        sql = "SELECT * FROM  [Info].[tbEspecialidades]";
        try{
            con = cnx.Conectar();
            ps=con.prepareCall(sql);
            rs=ps.executeQuery();
            
            while (rs.next()){
                Esp =new tbEspecialidades();
                Esp.setEsp_Id(rs.getInt("esp_Id"));
                Esp.setEsp_Descripcion(rs.getString("esp_Descripcion"));
                Esp.setEsp_UsuarioCrea(rs.getInt("esp_UsuarioCrea"));
                Esp.setEsp_FechaCrea(rs.getString("esp_FechaCrea"));
                Esp.setEsp_UsuarioModifica(rs.getInt("esp_UsuarioModifica"));
                Esp.setEsp_FechaCrea(rs.getString("esp_UsuarioModifica"));
                Esp.setEsp_Estado(rs.getInt("esp_Estado"));
                list.add(Esp);
                Esp =null; //new Usuarios();
            }
        }catch(SQLException ex){
            ex.getMessage().toString();
            //con=cnx.Conectar();
        }catch(Exception e){
            e.getMessage().toString();
            //con=cnx.Conectar();
        }
        return list;
    }

    @Override
    public String add(tbEspecialidades usu) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String sql,lol;
        sql = "exec Info.UDP_Info_tbEspecialidades_Insert '" + usu.getEsp_Descripcion() +"', 1";
        try{
            con = cnx.Conectar();
            CallableStatement cst = con.prepareCall("{?=call Info.UDP_Info_tbEspecialidades_Insert (?,?)}");
            cst.registerOutParameter(1, java.sql.Types.VARCHAR);
            cst.setString(2, usu.getEsp_Descripcion());
            cst.setInt(3, 1);   
            cst.execute();            
            lol=cst.getString(1);
            return lol;
        }catch(SQLException ex){
            ex.getMessage();
            //con=cnx.Conectar();
            return "-1";
        }catch(Exception e){
            e.getMessage();
            //con=cnx.Conectar();
            return "-1";
        }        
    }

    @Override
    public boolean edit(tbEspecialidades usu) {
        String sql;
        sql = "EXEC [dbo].[UDP_Info_tbEspecialidades_UPDATE] '"+ usu.getEsp_Id()+"', '" + usu.getEsp_Descripcion() +"', 1"  ;
        try{
            con = cnx.Conectar();
            ps=con.prepareCall(sql);
            rs=ps.executeQuery();
            
            return true;
        }catch(SQLException ex){
            ex.getMessage().toString();
            //con=cnx.Conectar();
            return false;
        }catch(Exception e){
            e.getMessage().toString();
            //con=cnx.Conectar();
            return false;
        }
    }

    @Override
    public boolean delete(int ID) {
        String sql;
        sql = "EXEC [dbo].[UDP_Info_tbEspecialidades_Delete] " + ID;
        try{
            con = cnx.Conectar();
            ps=con.prepareCall(sql);
            rs=ps.executeQuery();            
            return true;
        }catch(SQLException ex){
            ex.getMessage().toString();
            //con=cnx.Conectar();
            return false;
        }catch(Exception e){
            e.getMessage().toString();
            //con=cnx.Conectar();
            return false;
        }
    }
    
}
