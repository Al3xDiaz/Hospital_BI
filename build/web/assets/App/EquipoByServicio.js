/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $("#DDLNuevoServicio option[value='0']").hide();
    $("#DDLNuevoServicio option[value='0']").attr("selected", true);
    $("#DDLNuevoInventario option[value='0']").hide();
    $("#DDLNuevoInventario option[value='0']").attr("selected", true);
});
$("#btnNuevaEquipoByServicios").click(function () {
    var Servicio=$("#DDLNuevoServicio").val();   
    var Inventario=$("#DDLNuevoInventario").val(); 
    var URL ="Hospital_BI/EquipoByServiciosControlador?"+
                        "Accion=Agregar&"+
                        "&Servicio="+Servicio+
                        "&Inventario="+Inventario;
    $.ajax({
            url: URL,
            method: "POST",
            dataType: "json",
            contentType: "application/json; charset = utf-8",
            data: JSON.stringify({ valor: "valor" }),
        });      
           window.location.href = "Hospital_BI/EquipoByServiciosControlador?Accion=Listar";
});
function EditarES(ID, Servicio, Inventario) {
    $("#txtEditES_id").val(ID);
    var SelecServicio = "#DDLServicio " + "option[value=" + Servicio + "]";
    var SelecInventario = "#DDLInventario " + "option[value=" + Inventario + "]";
    $(SelecServicio).attr("selected",true);
    $(SelecInventario).attr("selected",true);       
}
function EliminarES(ID) {
    $("#txtEliminarES_id").val(ID);  
}
$("#btnEditarEquipoByServicios").click(function () {
    var ID=$("#txtEditES_id").val();
    var Servicio=$("#DDLServicio").val();   
    var Inventario=$("#DDLInventario").val(); 
    var URL ="Hospital_BI/EquipoByServiciosControlador?"+
                        "Accion=Editar&"+
                        "&ID="+ID+
                        "&Servicio="+Servicio+
                        "&Inventario="+Inventario;
    $.ajax({
            url: URL,
            method: "POST",
            dataType: "json",
            contentType: "application/json; charset = utf-8",
            data: JSON.stringify({ valor: "valor" }),
        });      
           window.location.href = "Hospital_BI/EquipoByServiciosControlador?Accion=Listar";
});