<%-- 
    Document   : IndexProvedor
    Created on : 09-01-2019, 04:50:33 PM
    Author     : keyci
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
<div class="page-content">

 <div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
     <div class="modal-dialog" role="document">
       <div class="modal-content">
         <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
           <h5 class="modal-title" id="exampleModalLabel">Modal de Eliminar</h5>

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
 <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
     <div class="modal-content">
       <div class="modal-header">
         <h5 class="modal-title" id="exampleModalLabel">Modal de Editar
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
         <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Nombre:</label>
           <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="Kevin Orlando Ramos" />
             </div>
         <div class="space-4"></div>
   <div class="modal-body2">
     <div class="form-group" >
             <label class="col-sm-3 control-label no-padding-right"  for="form-field-2"> Tipo De Proveedor:  </label>
             <select class=" col-xs-10 col-sm-5" title=""  >
             <option selected> Comerciante</option>
             <option >Empresa</option>
           </select>


                       </div>
                       <div class="form-group">
               <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Nombre Contacto:  </label>
               <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="Axel Portillo"/>

                 </div>
                 <div class="form-group">
               <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Telefono Contacto:  </label>
               <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="98765645"/>

             </div>
             <div class="form-group">
           <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Email:  </label>
           <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="KevinRamos@gmail.com"/>

         </div>
         <div class="form-group">
       <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Direccion:  </label>
       <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="Barrio Medina"/>

     </div>
     <div class="space-4"></div>
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
</div>

        <div class="modal fade" id="modalAgregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal de Agregar
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
                <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Nombre:</label>
                  <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />
                    </div>
                <div class="space-4"></div>
          <div class="modal-body2">
            <div class="form-group" >
                    <label class="col-sm-3 control-label no-padding-right"  for="form-field-2"> Tipo De Proveedor:  </label>
                    <select class="col-xs-10 col-sm-5" style="" title=""  >
                    <option> Comerciante</option>
                    <option >Empresa</option>
                  </select>


                              </div>
                              <div class="form-group">
                      <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Nombre Contacto::  </label>
                      <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />

                        </div>
                        <div class="form-group">
                      <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Telefono Contacto:  </label>
                      <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />

                    </div>
                    <div class="form-group">
                  <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Email:  </label>
                  <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />

                </div>
                <div class="form-group">
              <label class="col-sm-3 control-label no-padding-right" for="form-field-2"> Direccion:  </label>
              <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />

            </div>
            <div class="space-4"></div>
          </div>
      </form>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-white" data-dismiss="modal">Cerrar</button>
      <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
      </div>
      </div>
      </div>
      </div>

  <div class="row">
          <div class="col-xs-11">
            <h3 class="header smaller lighter blue">Listado de Proveedores
              <div style="float:Right;" margin="bottom">
                  <a class="btn btn-primary pull-right" id="btnNuevo" >
                    <i class=" bigger-110"></i>
                    Agregar
                  </a>
              </div>
              <br /><br />
            </h3>

            <div class="table-responsive">
              <div id="sample-table-2_wrapper" class="dataTables_wrapper" role="grid">
                     <table class="table table-responsive" id="tabla" >
                  <thead>
                    <tr>
                      <th >
                      </th>
                      <th >
                        Id Proveedor
                      </th>
                      <th >
                        Nombre
                      </th>
                      <th >
                        Tipo de Proveedor
                      </th>
                      <th >
                        Nombre Contacto
                      </th>
                      <th >
                        Telefono Contacto
                      </th>
                      <th >
                        Email
                      </th>
                      <th>
                        Direccion
                      </th>
                      <th>Acciones</th>
                    </tr>
                  </thead>
                  <tbody >
                    <tr >
                      <td >
                      </td>

                      <td >1</td>
                      <td >Kevin Orlando Ramos</td>
                      <td >Comerciante</td>
                      <td >Axel Portillo</td>
                      <td >98765645</td>
                      <td >KevinRamos@gmail.com</td>
                      <td >Barrio Medina</td>
                      <td >
                        <div >

                          <a class="btn btn-minier btn-warning text-center" id="btnEditar" >
                            Editar &nbsp; <i class="icon-pencil"></i>
                          </a>

                          <a class="btn btn-minier btn-danger text-center" id="btnEliminar" >
                            Borrar &nbsp; <i class="icon-trash"></i>
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
<%@include file="../../Shared/LayoutBottom.jsp" %>
