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
                      </th>
                      <th>
                        Empleado
                      </th>
                      <th>
                        Inicio del Turno
                      </th>
                      <th>
                        Fin del Turno
                      </th>
                      <th>
                        Sala
                      </th>
                      <th>
                        Fecha de Inicio
                      </th>
                      <th>
                        Fecha de Fin
                      </th>
                      <th>Acciones</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                      </td>
                      <td>
                        Juan Perez
                      </td>
                      <td>8:00 a.m</td>
                      <td>7:00 p.m</td>
                      <td>Sala 1</td>
                      <td>
                        12/08/2019
                      </td>
                      <td>
                        12/09/2019
                      </td>
                      <td>
                        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">

                          <a class="btn btn-minier btn-warning text-center" id="btnEditar" >
                            Editar &nbsp; <i class="icon-pencil"></i>
                          </a>

                          <a class="btn btn-minier btn-danger text-center" id="btnEliminar">
                            Eliminar &nbsp; <i class="icon-trash"></i>
                          </a>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
            </div>
          </div>
      </div>
    </div>
  </div>
 <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Editar Turno
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </h5>
          </div>
          <div class="modal-body">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1">Empleado:</label>
                <div class="col-sm-9">
                  <select class="width-80" id="form-field-select-3">
                    <option value="AK">Juan Perez</option>
                    <option value="AL">Maria Agustina</option>
                  </select>
                  <span class="help-inline col-xs-12 col-sm-7">
                    <span class="middle"></span>
                  </span>
                </div>
              </div>
              <div class="space-4"></div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Sala: </label>
                <div class="col-sm-9">
                  <select class="width-80" id="form-field-select-3">
                    <option value="AK">Sala 1</option>
                    <option value="AL">Sala 2</option>
                    <option value="AL">Sala 3</option>
                  </select>
                  <span class="help-inline col-xs-12 col-sm-7">
                    <span class="middle"></span>
                  </span>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Inicio del Turno </label>
                <div class="col-sm-9">
                  <div class="input-group bootstrap-timepicker">
                    <input id="timepicker1" type="text" class="form-control" value="08:00:00" />
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Fin del Turno </label>

                <div class="col-sm-9">
                  <div class="input-group bootstrap-timepicker">
                    <input id="timepicker2" type="text" class="form-control" value="07:00:00" />
                  </div>
                </div>
              </div>
              <div class="space-4"></div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Fecha Inicio: </label>
                <div class="col-sm-9">
                  <input type="date" id="form-field-2" class="col-xs-12 col-sm-9" value="2019-08-12" data-date-format="yyyy-mm-dd" />
                  <span class="help-inline col-xs-12 col-sm-7">
                    <span class="middle"></span>
                  </span>
                </div>
              </div>
              <div class="space-4"></div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Fecha Final: </label>
                <div class="col-sm-9">
                  <input type="date" id="form-field-2" class="col-xs-12 col-sm-9" value="2019-09-12" data-date-format="yyyy-mm-dd" />
                  <span class="help-inline col-xs-12 col-sm-7">
                    <span class="middle"></span>
                  </span>
                </div>
              </div>
              <div class="space-4"></div>
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
            <h5 class="modal-title" id="exampleModalLabel">Agregar Turno
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </h5>
          </div>
          <div class="modal-body">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1">Empleado:</label>
                <div class="col-sm-9">
                  <select class="width-80" id="form-field-select-3">
                    <option value="AK">Juan Perez</option>
                    <option value="AL">Maria Agustina</option>
                  </select>
                  <span class="help-inline col-xs-12 col-sm-7">
                    <span class="middle"></span>
                  </span>
                </div>
              </div>
              <div class="space-4"></div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Sala: </label>
                <div class="col-sm-9">
                  <select class="width-80" id="form-field-select-3">
                    <option value="AK">Sala 1</option>
                    <option value="AL">Sala 2</option>
                    <option value="AL">Sala 3</option>
                  </select>
                  <span class="help-inline col-xs-12 col-sm-7">
                    <span class="middle"></span>
                  </span>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Inicio del Turno </label>
                <div class="col-sm-9">
                  <div class="input-group bootstrap-timepicker">
                    <input id="timepicker3" type="text" class="form-control" />
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Fin del Turno </label>

                <div class="col-sm-9">
                  <div class="input-group bootstrap-timepicker">
                    <input id="timepicker4" type="text" class="form-control" />
                  </div>
                </div>
              </div>
              <div class="space-4"></div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Fecha Inicio: </label>
                <div class="col-sm-9">
                  <input type="date" id="form-field-2" class="col-xs-12 col-sm-9" value="2019-01-01" data-date-format="yyyy-mm-dd" />
                  <span class="help-inline col-xs-12 col-sm-7">
                    <span class="middle"></span>
                  </span>
                </div>
              </div>
              <div class="space-4"></div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Fecha Final: </label>
                <div class="col-sm-9">
                  <input type="date" id="form-field-2" class="col-xs-12 col-sm-9" value="2019-01-01" data-date-format="yyyy-mm-dd" />
                  <span class="help-inline col-xs-12 col-sm-7">
                    <span class="middle"></span>
                  </span>
                </div>
              </div>
              <div class="space-4"></div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-white" data-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
          </div>
        </div>
      </div>
    </div>
    <div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Eliminar Turno</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <div class="col-sm-9">
                  ¿Está seguro de que desea eliminar este registro?
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
<%@include file="../../Shared/LayoutBottom.jsp" %>
