<%--
    Document   : index
    Created on : 01-sep-2019, 12:42:24
    Author     : Chris Andino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
<div class="row">
  <div class="col-md-11">
    <h3 class="header smaller lighter blue">Listado de Cargos</h3>
    <button class="btn btn-primary pull-right" id="btnNuevo">Agregar</button>
    <br><br>
        <table class="table table-responsive" id="tabla">
          <thead>
            <tr>

              <th>
                Id Cargo
              </th>
              <th>
                Cargo
              </th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                1
              </td>
              <td>Medico</td>
              <td>

                  <a class="btn btn-minier btn-warning text-center" id="btnEditar">
                    Editar &nbsp; <i class="icon-pencil"></i>
                  </a>
                  <a class="btn btn-minier btn-danger text-center" id="btnEliminar">
                    Eliminar &nbsp; <i class="icon-trash"></i>
                  </a>

              </td>
            </tr>
          </tbody>
        </table>
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
          <h5 class="modal-title" id="exampleModalLabel">Agregar Cargo</h5>
        </div>
        <div class="modal-body">
          <form class="form-horizontal" role="form">
            <div class="form-group">
              <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Id:</label>
              <div class="col-sm-9">
                <input  type="text" id="form-field-1" class="col-xs-10 col-sm-5"  />
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Cargo:</label>
              <div class="col-sm-9">
                <input type="text" id="form-field-1" class="col-xs-10 col-sm-5"  />
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
        <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">Editar Cargo</h5>
              </div>
              <div class="modal-body">
                <form class="form-horizontal" role="form">
                  <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Id:</label>
                                       <div class="col-sm-9">
                                            <input disabled type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="1" />
                                        </div>
                                    </div>
                  <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Cargo:</label>
                                       <div class="col-sm-9">
                                            <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="Medico"/>
                                        </div>
                                    </div>
                              <div class="space-4"></div>
      </form>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-white" data-dismiss="modal">Cerrar</button>
      <button type="button" class="btn btn-warning" data-dismiss="modal">Editar</button>
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
          <h5 class="modal-title" id="exampleModalLabel">Eliminar Cargo</h5>
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
