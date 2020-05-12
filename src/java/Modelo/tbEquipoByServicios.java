/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Lab 1
 */
public class tbEquipoByServicios {
    int eqsev_Id;
    int serv_Id;
    int Inv_Id;
    int eqsev_Estado;
    int eqsev_UsuarioCrea;
    String eqsev_FechaCrea;    

    public tbEquipoByServicios(int eqsev_Id, int serv_Id, int Inv_Id, int eqsev_Estado, int eqsev_UsuarioCrea, String eqsev_FechaCrea, int eqsev_UsuarioModifica, String eqsev_FechaModifica) {
        this.eqsev_Id = eqsev_Id;
        this.serv_Id = serv_Id;
        this.Inv_Id = Inv_Id;
        this.eqsev_Estado = eqsev_Estado;
        this.eqsev_UsuarioCrea = eqsev_UsuarioCrea;
        this.eqsev_FechaCrea = eqsev_FechaCrea;
        this.eqsev_UsuarioModifica = eqsev_UsuarioModifica;
        this.eqsev_FechaModifica = eqsev_FechaModifica;
    }

    public tbEquipoByServicios() {
        this.eqsev_UsuarioCrea = 1;
        this.eqsev_UsuarioModifica = 1;
    }
    int eqsev_UsuarioModifica;
    String eqsev_FechaModifica;

    public void setEqsev_Id(int eqsev_Id) {
        this.eqsev_Id = eqsev_Id;
    }

    public void setServ_Id(int serv_Id) {
        this.serv_Id = serv_Id;
    }

    public void setInv_Id(int Inv_Id) {
        this.Inv_Id = Inv_Id;
    }

    public void setEqsev_Estado(int eqsev_Estado) {
        this.eqsev_Estado = eqsev_Estado;
    }

    public void setEqsev_UsuarioCrea(int eqsev_UsuarioCrea) {
        this.eqsev_UsuarioCrea = eqsev_UsuarioCrea;
    }

    public void setEqsev_FechaCrea(String eqsev_FechaCrea) {
        this.eqsev_FechaCrea = eqsev_FechaCrea;
    }

    public void setEqsev_UsuarioModifica(int eqsev_UsuarioModifica) {
        this.eqsev_UsuarioModifica = eqsev_UsuarioModifica;
    }

    public void setEqsev_FechaModifica(String eqsev_FechaModifica) {
        this.eqsev_FechaModifica = eqsev_FechaModifica;
    }

    public int getEqsev_Id() {
        return eqsev_Id;
    }

    public int getServ_Id() {
        return serv_Id;
    }

    public int getInv_Id() {
        return Inv_Id;
    }

    public int getEqsev_Estado() {
        return eqsev_Estado;
    }

    public int getEqsev_UsuarioCrea() {
        return eqsev_UsuarioCrea;
    }

    public String getEqsev_FechaCrea() {
        return eqsev_FechaCrea;
    }

    public int getEqsev_UsuarioModifica() {
        return eqsev_UsuarioModifica;
    }

    public String getEqsev_FechaModifica() {
        return eqsev_FechaModifica;
    }   
    
}
