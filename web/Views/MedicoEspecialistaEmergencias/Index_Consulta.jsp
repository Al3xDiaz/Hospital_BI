<%-- 
    Document   : frmEditEmpleado
    Created on : 09-01-2019, 02:12:27 PM
    Author     : Jennifer V
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
      <div class="row">
  <div class="col-md-11">
    <h3 class="header smaller lighter blue">Listado de Consultas</h3>
       <button class="btn btn-primary pull-right" id="btnNuevo">Agregar</button>
    <br><br>
         <table class="table table-responsive" id="tabla">
    
                  <thead>
                    <tr>
                      <th>
                      </th>
                      <th>
                        Id Factura
                      </th>
                      <th>
                        Id Paciente
                      </th>
                      <th>
                        Nombre
                      </th>
                      <th>
                        Fecha Factura
                      </th>
                      <th>
                        Horario Turno
                      </th>
                      <th>Acciones</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                      </td>
                      <td>
                        1
                      </td>
                      <td>
                        2
                      </td>
                      <td>Juana Lopez</td>
                      <td>12:15 00:00:00</td>
                      <td>12:30 PM</td>
                      <td>
                        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">

                          <a class="btn btn-minier btn-warning text-center" id="btnEditar" >
                            Editar &nbsp; <i class="icon-pencil"></i>
                          </a>

                          <a class="btn btn-minier btn-danger text-center" id="btnEliminar">
                            Borrar &nbsp; <i class="icon-trash"></i>
                          </a>
                        </div>
                      </td>
                    </tr>
                  
                </table>
              <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
     <div class="modal-content">
       <div class="modal-header">
         <h5 class="modal-title" id="exampleModalLabel">Editar Consulta
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </h5>
       </div>    <style type="text/css">
           							 form label{
           								display: inline-block;
           								width:50px;
           								margin-right:0.5em;
           								text-align: right;
           							}
           						</style>
       <div class="modal-body">
         <form class="form-horizontal" role="form">
           <div class="form-group">
           <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Identidad:</label>
             <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="1"/>
               </div>
               <div class="form-group">
               <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Nombre:</label>
                 <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="Juana Lopez"/>
                   </div>
                   <div class="form-group">
                   <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Fecha Factura:</label>
                     <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="2019-09-12"/>
                       </div>
                       <div class="form-group">
               <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Turno Horario:  </label>
               <select class="form-control" style="width: 200px;"  name="selectmedico" class="col-xs-10 col-sm-5" >
               <option>1:00</option>
               <option>1:15</option>
               </select>

                 </div>
           <div class="space-4"></div>

 </form>
 </div>
 <div class="modal-footer">
 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
 <button type="button" class="btn btn-warning" data-dismiss="modal" >Editar</button>
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
          <h5 class="modal-title" id="exampleModalLabel">Eliminar Consulta</h5>

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
<button type="button" class="btn btn-danger" data-dismiss="modal" >Eliminar</button>
</div>
</div>
</div>
</div>
  
            <!-- Modal de Editar -->
            <div class="modal fade" id="modalAgregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Agregar Consulta
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </h5>
                  </div>
               <style type="text/css">
                                    form label{
                                     display: inline-block;
                                     width:50px;
                                     margin-right:0.5em;
                                     text-align: right;
                                   }
                                 </style>
                  <div class="modal-body">
                    <form class="form-horizontal" role="form">
                      <div class="form-group">
                      <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Identidad:</label>
                        <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />
                          </div>
                          <div class="form-group">
                          <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Nombre:</label>
                            <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />
                              </div>
                              <div class="form-group">
                              <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Fecha Factura:</label>
                                <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />
                                  </div>
                      <div class="space-4"></div>
                     <div class="modal-body2">
                            <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="form-field-2">Turno Horario:  </label>
                            <select class="form-control" style="width: 200px;"  name="selectmedico" >
                            <option>1:00 PM </option>
                            <option>1:15 PM </option>
                            <option>1:30 PM </option>
                            <option>1:45 PM </option>
                            <option>2:00 PM </option>
                            </select>
                              </div>
                  <div class="space-4"></div>
                </div>
            </form>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal" >Acptar</button>
            </div>
          </div>
          </div>
          </div>
<%@include file="../../Shared/LayoutBottom.jsp" %>

