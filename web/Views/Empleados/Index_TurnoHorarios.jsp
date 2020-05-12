<%-- 
    Document   : frmEditEmpleado
    Created on : 09-01-2019, 02:12:27 PM
    Author     : Jennifer V
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
      <div class="row">
  <div class="col-md-11">
    <h3 class="header smaller lighter blue">Listado de Empleados</h3>
       <button class="btn btn-primary pull-right" id="btnNuevo">Agregar</button>
    <br><br>
         <table class="table table-responsive" id="tabla">

              <thead>
                <tr>
                  <th>
                    Hora del Turno
                  </th>
                  <th>Acciones</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    08:00 am
                  </td>
                  <td>
                    <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
                      <a class="btn btn-minier btn-warning text-center" id="btnEditar" >
                        Editar &nbsp; <i class="icon-pencil"></i>
                      </a>

                      <a class="btn btn-minier btn-danger text-center" id="btnEliminar" >
                        Eliminar &nbsp; <i class="icon-trash"></i>
                      </a>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <h5 class="modal-title" id="exampleModalLabel">Editar Hora de Turno</h5>
                </div>
                <div class="modal-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Inicio del Turno </label>
                      <div class="col-sm-9">
                        <div class="input-group bootstrap-timepicker">
                          <input id="timepicker2" type="text" class="form-control" value="08:00:00" />
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-white" data-dismiss="modal">Cerrar</button>
                  <button type="button" class="btn btn-warning" data-dismiss="modal">Editar</button>
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
                  <h5 class="modal-title" id="exampleModalLabel">Agregar Hora de Turno</h5>
                </div>
                <div class="modal-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Inicio del Turno </label>
                      <div class="col-sm-9">
                        <div class="input-group bootstrap-timepicker">
                          <input id="timepicker2" type="text" class="form-control" value="08:00:00" />
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-white" data-dismiss="modal">Cerrar</button>
                  <button type="button" class="btn btn-primary" data-dismiss="modal">Editar</button>
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
                  <h5 class="modal-title" id="exampleModalLabel">Eliminar Hora de Turno</h5>
                </div>
                <div class="modal-body">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <div class="col-sm-9">
                        ¿Está seguro de que desea eliminar éste registro?
                      </div>
                    </div>
                    <div class="space-4"></div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-white" data-dismiss="modal">Cancelar</button>
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Eliminar</button>
                </div>
              </div>
            </div>
          </div>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div>
<%@include file="../../Shared/LayoutBottom.jsp" %>
