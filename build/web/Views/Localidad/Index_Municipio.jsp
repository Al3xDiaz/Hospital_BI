<%-- 
    Document   : frmEditEmpleado
    Created on : 09-01-2019, 02:12:27 PM
    Author     : Jennifer V
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
      <div class="row">
  <div class="col-md-11">
    <h3 class="header smaller lighter blue">Listado de Municipios</h3>
       <button class="btn btn-primary pull-right" id="btnNuevo">Agregar</button>
    <br><br>
         <table class="table table-responsive" id="tabla">
  <thead>
                    <tr >
                      <th >
                      </th>
                      <th >
                        ID Municipios
                      </th>
                      <th >
                        Descripcion
                      </th>
                      <th >
                        ID Departamento
                      </th>
                      <th >Acciones</th>
                    </tr>
                  </thead>
                  <tbody >
                    <tr >
                      <td >
                      </td>

                      <td >
                        1
                      </td>
                      <td >San Pedro Sula</td>
                      <td >1</td>

                      <td >
                        <div >

                          <a class="btn btn-minier btn-warning text-center" id="btnEditar" >
                            Editar &nbsp; <i class="icon-pencil"></i>
                          </a>

                          <a class="btn btn-minier btn-danger text-center" id="btnEliminar" >
                            Eliminar &nbsp; <i class="icon-trash"></i>
                          </a>
                        </div>
                      </td>
                    </tr>
         </table>
              <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h5 class="modal-title" id="exampleModalLabel">Editar Municipios</h5>

        </div>
        <div class="modal-body">
          <form class="form-horizontal" role="form">
            <div class="form-group">
                                  <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> ID Municipios:</label>
                                 <div class="col-sm-9">
                                      <input type="text" id="form-field-1" class="col-xs-12 col-sm-8" />
                                  </div>
                              </div>
                        <div class="space-4"></div>
      <div class="modal-body2">
        <div class="form-group">
                              <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Descripcion: </label>
                              <div class="col-sm-9">
                                  <input type="text" id="form-field-1" class="col-xs-12 col-sm-8" />
                                  <span class="help-inline col-xs-12 col-sm-7">
                                      <span class="middle"></span>
                                  </span>
                              </div>
                          </div>
        <div class="space-4"></div>
      </div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
<button type="button" class="btn btn-warning" data-dismiss="modal">Editar</button>
</div>
</div>
</div>
</div>

<!--Modal de agregar-->
<div class="modal fade" id="modalAgregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h5 class="modal-title" id="exampleModalLabel">Agregar Municipios</h5>

      </div>
      <div class="modal-body">
        <form class="form-horizontal" role="form">
          <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1">ID Municipios:</label>
                               <div class="col-sm-9">
                                    <input type="text" id="form-field-1" class="col-xs-12 col-sm-8" />
                                </div>
                            </div>
                      <div class="space-4"></div>
    <div class="modal-body2">
      <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Descripcion: </label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1" class="col-xs-12 col-sm-8" />
                                <span class="help-inline col-xs-12 col-sm-7">
                                    <span class="middle"></span>
                                </span>
                            </div>
                        </div>
      <div class="space-4"></div>
    </div>
    <div class="modal-body2">
      <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> ID Departamento: </label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1" class="col-xs-12 col-sm-8" />
                                <span class="help-inline col-xs-12 col-sm-7">
                                    <span class="middle"></span>
                                </span>
                            </div>
                        </div>
      <div class="space-4"></div>
    </div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
<button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
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
          <h5 class="modal-title" id="exampleModalLabel">Eliminar Municipio</h5>

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
<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
<button type="button" class="btn btn-danger" data-dismiss="modal">Eliminar</button>
</div>
</div>
</div>
</div>
<%@include file="../../Shared/LayoutBottom.jsp" %>
