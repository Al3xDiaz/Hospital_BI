<%-- 
    Document   : Index_tbSalaCuidadosIntensivos
    Created on : 09-01-2019, 05:05:48 PM
    Author     : keyci
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
<div class="page-content">
    
    
 <!-- Modal de Editar -->
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
 <button type="button" class="btn btn-danger">Eliminar</button>
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
           <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />
             </div>
         <div class="space-4"></div>
   <div class="modal-body2">
     <div class="form-group" >
             <label class="col-sm-3 control-label no-padding-right"  for="form-field-2"> Tipo De Proveedor:  </label>
             <select class=" col-xs-10 col-sm-5" title=""  >
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
<button type="button" class="btn btn-warning">Editar</button>
</div>
</div>
</div>
</div>
    <div class="row">
          <div class="col-xs-11">
            <h3 class="header smaller lighter blue">Listado de pacientes en cuidados intensivos
              <div style="float:Right;" margin="bottom">
                <a href="Hospital_BI/Views/SalaCuidadosIntensivos/Create_SalaCuidadosIntensivos.jsp" class="btn btn-primary pull-right">Agregar</a>
               
              </div>
              <br /><br />
            </h3>

            <div class="table-responsive">
              <div id="sample-table-2_wrapper" class="dataTables_wrapper" role="grid">
                                <table class="table table-responsive" id="tabla">
                  <thead>
                    <tr>
                      <th >
                      </th>
                      <th >
                        Nombre Paciente
                      </th>
                      <th >
                        Médico Asignado
                      </th>
                      <th >
                        Especialidad
                      </th>
                      <th >
                        Sala
                      </th>
                      <th >
                        Razón
                      </th>
                      <th >
                        Fecha Ingreso
                      </th>
                      <th >Dar Alta</th>
                    </tr>
                  </thead>
                  <tbody >
                    <tr >
                      <td >
                      </td>
                      <td >Jennifer Vasquez</td>
                      <td >Marcos Flores</td>

                      <td >
                        Cirujano
                      </td>

                      <td >
                        Cirugia
                      </td>
                      <td >
                        Cirugia  de Riñon
                      </td>
                      <td >
                        2019-19-25
                      </td>
                      <td>
												<div >
													<button class="btn btn-xs btn-success">
														<i class="icon-ok bigger-120"></i>
													</button>
												</div>

												<div class="visible-xs visible-sm hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
															<i class="icon-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">

															<li>
																<a href="../../#" class="tooltip-error" data-rel="tooltip" title="Delete">
																	<span class="btn btn-xs btn-success">
																		<i class="icon-ok bigger-120"></i>
																	</span>
																</a>
															</li>
														</ul>
													</div>
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
<%@include file="../../Shared/LayoutBottom.jsp" %>