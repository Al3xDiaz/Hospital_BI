var t=null,fila=null;
$(document).ready(function() {
    t = $('#tabla').DataTable();
} );
$("#btnNuevaEspecialidad").click(function () {
    var pDescripcion=$("#txtEsp_Descripcion").val();
    $.post("Hospital_BI/EspecialidadesControlador", 
    {
        Accion : "Agregar",
        Descripcion: pDescripcion
    }, function(responseText) {
        if(responseText=='-1'){
            alert('Se ah producido un error');
        }else{
            t.row.add( [
                pDescripcion,
                "<td> <div class='visible-md visible-lg hidden-sm hidden-xs action-buttons'>"+
                        "<button onclick='Editar($(this))' data-id='"+responseText+"' class='btnEditar btn btn-minier btn-warning text-center' id='btnEditar' data-toggle='modal' data-target='#ModalEditar' >"+
                        "Editar<i class='icon-pencil'></i>"+
                      "</button>"+
                      "<button onclick='Eliminar($(this))' data-id='"+responseText+"'  class='btnEliminar btn btn-minier btn-danger text-center' id='btnEliminar' name='btnEliminar' data-toggle='modal' data-target='#ModalEliminar' >"+
                        "Eliminar<i class='icon-trash'></i>"+
                      "</button>"+
                    "</div></td></tr>"
            ] ).draw( false );
            alert('Se ah realizado exitosamente');
        }
    });    
});
$("#btnEditarEspecialidad").click(function () {
    var Id=$("#txtEditEsp_id").val();
    var Descripcion=$("#txtEditEsp_Descripcion").val();    
    var EspDescripcion ="Hospital_BI/EspecialidadesControlador";
    $.post(EspDescripcion, 
    {
        Accion : "Editar",
        ID: Id,
        Descripcion: Descripcion
    }, function(responseText) {
        if(responseText=='-1'){
            alert('Se ah producido un error');
        }else{
            fila[0].cells[0].outerText=Descripcion;
           alert('Se ah realizado exitosamente');
        }	
    });
});
$("#btnEspEliminar").click(function () {
    var ID=$("#txtEliminarEsp_id").val();   
    $.post("Hospital_BI/EspecialidadesControlador", 
    {
        Accion : "Eliminar",
        ID: ID
    }, function(responseText) {
        if(responseText=='-1'){
            alert('Se ah producido un error');
        }else{
            t = $('#tabla').DataTable(); 
            t
            .row( fila )
            .remove()
            .draw();
           alert('Se ah realizado exitosamente');
        }
    });
});
function Editar(btn) {
    $('#ModalEditar').modal({
      show: 'true'
    });
    var ID = btn.data('id');    
    fila=btn.parents('tr');
    var des=fila[0].cells[0].outerText;
    $("#txtEditEsp_id").val(ID);    
    $("#txtEditEsp_Descripcion").val(des);
}
function Eliminar(btn) {
    $('#ModalEliminar').modal({
      show: 'true'
    });
    var ID = btn.data('id');    
    fila=btn.parents('tr');
    $("#txtEliminarEsp_id").val(ID);
}
$('#btnNuevo').on('click', function(ev) {
    $('#modalAgregar').modal({
    show: 'true'
    });    
});
