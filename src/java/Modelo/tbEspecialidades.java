/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Alex Diaz
 */
public class tbEspecialidades {
    int esp_Id;
    String esp_Descripcion, esp_FechaCrea, esp_FechaModifica;
    int esp_UsuarioCrea, esp_UsuarioModifica;
    int esp_Estado;

    public tbEspecialidades(int esp_Id, String esp_Descripcion, String esp_FechaCrea, String esp_FechaModifica, int esp_UsuarioCrea, int esp_UsuarioModifica, int esp_Estado) {
        this.esp_Id = esp_Id;
        this.esp_Descripcion = esp_Descripcion;
        this.esp_FechaCrea = esp_FechaCrea;
        this.esp_FechaModifica = esp_FechaModifica;
        this.esp_UsuarioCrea = esp_UsuarioCrea;
        this.esp_UsuarioModifica = esp_UsuarioModifica;
        this.esp_Estado = esp_Estado;
        
    }

    public tbEspecialidades() {
    }

    public int getEsp_Id() {
        return esp_Id;
    }

    public void setEsp_Id(int esp_Id) {
        this.esp_Id = esp_Id;
    }

    public String getEsp_Descripcion() {
        return esp_Descripcion;
    }

    public void setEsp_Descripcion(String esp_Descripcion) {
        this.esp_Descripcion = esp_Descripcion;
    }

    public String getEsp_FechaCrea() {
        return esp_FechaCrea;
    }

    public void setEsp_FechaCrea(String esp_FechaCrea) {
        this.esp_FechaCrea = esp_FechaCrea;
    }

    public String getEsp_FechaModifica() {
        return esp_FechaModifica;
    }

    public void setEsp_FechaModifica(String esp_FechaModifica) {
        this.esp_FechaModifica = esp_FechaModifica;
    }

    public int getEsp_UsuarioCrea() {
        return esp_UsuarioCrea;
    }

    public void setEsp_UsuarioCrea(int esp_UsuarioCrea) {
        this.esp_UsuarioCrea = esp_UsuarioCrea;
    }

    public int getEsp_UsuarioModifica() {
        return esp_UsuarioModifica;
    }

    public void setEsp_UsuarioModifica(int esp_UsuarioModifica) {
        this.esp_UsuarioModifica = esp_UsuarioModifica;
    }

    public int getEsp_Estado() {
        return esp_Estado;
    }

    public void setEsp_Estado(int esp_Estado) {
        this.esp_Estado = esp_Estado;
    }
}
