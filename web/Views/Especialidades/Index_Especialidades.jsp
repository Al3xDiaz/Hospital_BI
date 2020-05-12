<%-- 
    Document   : frmEditEmpleado
    Created on : 09-01-2019, 02:12:27 PM
    Author     : Jennifer V
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.tbEspecialidades"%>
<%@page import="ModeloDAO.tbEspecialidadesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
<title>Especialidades</title>
      <div class="row">
  <div class="col-md-11">
    <h3 class="header smaller lighter blue">Listado de Especialidades</h3>
       <button class="btn btn-primary pull-right" id="btnNuevo">Agregar</button>
    <br><br>
         <table class="table table-responsive" id="tabla">
                  <thead>
                 <tr >                       <th >
                        Descripcion
                      </th>
                      <th >Acciones</th>
                    </tr>
                  </thead>
                  <tbody >
                      <%try{
                          tbEspecialidadesDAO dao = new tbEspecialidadesDAO();
                                        List<tbEspecialidades> list = dao.listar();
                                        Iterator<tbEspecialidades> iter= list.iterator();
                                        tbEspecialidades Especialidad= null;
                                        while (iter.hasNext()){
                                            Especialidad= null;
                                            Especialidad= iter.next();
                                            if(Especialidad.getEsp_Estado()>0){%>
                    <tr >      
                      <td >
                          <%=Especialidad.getEsp_Descripcion()%>
                      </td>
                  <td>
                    <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
                        <button onclick="Editar($(this))" data-id='<%=Especialidad.getEsp_Id()%>' class="btn btn-minier btn-warning text-center" id="btnEditar" data-toggle="modal" data-target="#ModalEditar" >
                        Editar<i class="icon-pencil"></i>
                      </button>

                      <button onclick="Eliminar($(this))" data-id='<%=Especialidad.getEsp_Id()%>' class="btn btn-minier btn-danger text-center" id="btnEliminar" name='btnEliminar' data-toggle="modal" data-target="#ModalEliminar"  >
                        Eliminar<i class="icon-trash"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                <%}}
            }catch(Exception e){
                    e.getMessage().toString();
        }%>
              </tbody>
            </table>
          </div>
 <!-- Modal de Editar -->
 <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h5 class="modal-title" id="exampleModalLabel">Editar Especialidad</h5>

      </div>
      <div class="modal-body">
        <form class="form-horizontal" role="form">
          <div class="form-group">
                                <input type="hidden" id="txtEditEsp_id" name="txtEditEsp_id" class="col-xs-12 col-sm-8" value="" />
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Descripcion:</label>
                         <div class="col-sm-9">
                            <input type="text" id="txtEditEsp_Descripcion" name="txtEditEsp_Descripcion" class="col-xs-12 col-sm-8" value="" />
                        </div>
                            </div>
                      <div class="space-4"></div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
<button type="button" class="btn btn-warning" id="btnEditarEspecialidad" name="btnEditarEspecialidad" data-dismiss="modal">Editar</button>
</div>
</div>
</div>
</div>
<div class="modal fade" id="modalAgregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h5 class="modal-title" id="exampleModalLabel">Nueva Especialidad</h5>

      </div>
      <div class="modal-body">
        <form class="form-horizontal" role="form">
          <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Descripcion:</label>
                               <div class="col-sm-9">
                                    <input type="text" id="txtEsp_Descripcion" name="txtEsp_Descripcion" class="col-xs-12 col-sm-8" />
                                </div>
                            </div>
                      <div class="space-4"></div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
<button type="button" class="btn btn-primary" id="btnNuevaEspecialidad" name="btnNuevaEspecialidad" data-dismiss="modal">Aceptar</button>
</div>
</div>
</div>
</div>


<div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h5 class="modal-title" id="exampleModalLabel">Eliminar Especialidad</h5>

        </div>
        <div class="modal-body">
          <form class="form-horizontal" role="form">
            <div class="form-group">
                                 <div class="col-sm-9">
                                      ¿Está seguro de que desea eliminar este registro?
                                      <input type="hidden" id="txtEliminarEsp_id" name="txtEliminarEsp_id" class="col-xs-12 col-sm-8" value="" />
                                  </div>
                              </div>
                        <div class="space-4"></div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
<button type="button" id="btnEspEliminar" name="btnEspEliminar" class="btn btn-danger" data-dismiss="modal">Eliminar</button>
</div>
</div>
</div>
</div>

<%@include file="../../Shared/LayoutBottom.jsp" %>
<script src="Hospital_BI/assets/App/Especialidades.js" type="text/javascript"></script>