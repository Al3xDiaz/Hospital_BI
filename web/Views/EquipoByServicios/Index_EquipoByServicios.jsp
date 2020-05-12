<%-- 
    Document   : Index_EquipoByServicios
    Created on : 09-06-2019, 10:55:58 AM
    Author     : Lab 1
--%>

<%@page import="Modelo.DDL"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.tbEquipoByServiciosDAO"%>
<%@page import="Modelo.tbEquipoByServicios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
<title>Equipo By Servicios</title>
      <div class="row">
  <div class="col-md-11">
    <h3 class="header smaller lighter blue">Listado de Equipo By Servicios</h3>
       <button class="btn btn-primary pull-right" id="btnNuevo">Agregar</button>
    <br><br>
         <table class="table table-responsive" id="tabla">
                  <thead>
                    <tr >
                      <th >
                        Servicio
                      </th>
                      <th >
                        Inventario
                      </th>
                      <th >Acciones</th>
                    </tr>
                  </thead>
                  <tbody >
                      <%
                        tbEquipoByServiciosDAO dao = new tbEquipoByServiciosDAO();
                        List<tbEquipoByServicios> list = dao.listar();
                        List<DDL> listI = dao.listarDDLInventario();
                        List<DDL> listS = dao.listarDDLServicio();


                        Iterator<tbEquipoByServicios> iter= list.iterator();                                        
                        Iterator<DDL> iterS= listS.iterator();
                        Iterator<DDL> iterI= listI.iterator();
                        tbEquipoByServicios EquipoServicios= null;
                        DDL Servicios= null;
                        DDL Inventario=null;
                        try{
                        while (iter.hasNext()){
                            EquipoServicios= null;
                            EquipoServicios= iter.next();
                            int lol=EquipoServicios.getEqsev_Estado();
                            if(lol>0){
                                iterS= listS.iterator();
                                iterI= listI.iterator();
                            %>
                    <tr >      
                      <td >
                        
                        <%while (iterS.hasNext()){
                            Servicios= null;
                            Servicios= iterS.next();
                            int IDs = Servicios.getID();
                            int IDes=EquipoServicios.getServ_Id();
                            if(IDs==IDes){
                            %>
                                <%=Servicios.getDescripcion()%>                                            
                            <%}                                           
                        }%>
                      </td>
                      <td >
                          <%while (iterI.hasNext()){
                            Inventario= null;
                            Inventario= iterI.next();
                            if(Inventario.getID()==EquipoServicios.getInv_Id()){
                            %>
                                <%=Inventario.getDescripcion()%>
                            <%
                            }
                            }%>
                      </td>
                  <td>
                    <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
                        <a onClick="EditarES(<%=EquipoServicios.getEqsev_Id()%>,<%=EquipoServicios.getServ_Id()%>,<%=EquipoServicios.getInv_Id()%>)" class="btn btn-minier btn-warning text-center" id="btnEditar" data-toggle="modal" data-target="#ModalEditar" >
                        Editar<i class="icon-pencil"></i>
                      </a>

                      <a onClick='EliminarES(<%=EquipoServicios.getEqsev_Id()%>)' class="btn btn-minier btn-danger text-center" id="btnEliminar" name='btnEliminar' data-toggle="modal" data-target="#ModalEliminar"  >
                        Eliminar<i class="icon-trash"></i>
                      </a>
                    </div>
                  </td>
                </tr>
                <%}}%>
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
        <h5 class="modal-title" id="exampleModalLabel">Editar Equipo By Servicios</h5>

      </div>
      <div class="modal-body">
        <form class="form-horizontal" role="form">
          <div class="form-group">
                        <input type="hidden" id="txtEditES_id" name="txtEditES_id" class="col-xs-12 col-sm-8" value="" />
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Servicio</label>
                         <div class="col-sm-9">
                          <select name="DDLServicio" ID="DDLServicio">
                              <option value="0" style="display:none;">**SELECCIONE UNA OPCION**</option>
                               <%iterS= listS.iterator();
                                   while (iterS.hasNext()){
                                            Servicios= null;
                                            Servicios= iterS.next();%>                                                              
                            <option value="<%=Servicios.getID()%>"><%=Servicios.getDescripcion()%></option> 
                            <%}%>
                          </select>                         
                         </div>                          
                            </div>
                      <div class="space-4"></div>
                      <div class="form-group">
                          <label class="col-sm-3 control-label no-padding-right" for="form-field-1">Inventario hospital</label>
                                <div class="col-sm-9">
                                    <select id="DDLInventario" name="DDLInventario">
                                        <option value="0" style="display:none;">**SELECCIONE UNA OPCION**</option>
                                        <%iterI= listI.iterator();
                                              while (iterI.hasNext()){
                                                       Inventario= null;
                                                       Inventario= iterI.next();%>     
                                               <option value="<%=Inventario.getID()%>" ><%=Inventario.getDescripcion()%></option> 
                                        <%}%>
                                     </select>
                                </div>
                      </div>
                      <div class="space-4"></div>                      
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
<button type="button" class="btn btn-warning" id="btnEditarEquipoByServicios" name="btnEquipoByServicios" data-dismiss="modal">Editar</button>
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
        <h5 class="modal-title" id="exampleModalLabel">Nueva Equipo By Servicios</h5>

      </div>
      <div class="modal-body">
        <form class="form-horizontal" role="form">
          <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Servicio</label>
               <div class="col-sm-9">
                <select ID="DDLNuevoServicio" name="DDLNuevoServicio">
                    <option value="0" style="display:none;">**SELECCIONE UNA OPCION**</option>
                    <%iterS= listS.iterator();
                        while (iterS.hasNext()){
                                 Servicios= null;
                                 Servicios= iterS.next();%>                                                              
                 <option value="<%=Servicios.getID()%>" ><%=Servicios.getDescripcion()%></option> 
                 <%}%>
               </select>              
               </div>
            </div>
      <div class="space-4"></div>
      <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Inventario Hospital</label>
                <div class="col-sm-9">
                    <select ID="DDLNuevoInventario" name="DDLNuevoInventario">
                        <option value="0" style="display:none;">**SELECCIONE UNA OPCION**</option>
                        <%iterI= listI.iterator();
                        while (iterI.hasNext()){
                                 Inventario= null;
                                 Inventario= iterI.next();%>     
                        <option value="<%=Inventario.getID()%>" ><%=Inventario.getDescripcion()%></option> 
                        <%}%>
                        <%
                              }catch(Exception e){
                                      e.getMessage();
                          }%>
                     </select>
                </div>
            </div>
      <div class="space-4"></div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
<button type="button" class="btn btn-primary" id="btnNuevaEquipoByServicios" name="btnNuevaEquipoByServicios" data-dismiss="modal">Aceptar</button>
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
          <h5 class="modal-title" id="exampleModalLabel">Eliminar Equipo By Servicios</h5>

        </div>
        <div class="modal-body">
          <form class="form-horizontal" role="form">
            <div class="form-group">
                                 <div class="col-sm-9">
                                      ¿Está seguro de que desea eliminar este registro?
                                      <input type="hidden" id="txtEliminarES_id" name="txtEliminarES_id" class="col-xs-12 col-sm-8" value="" />
                                  </div>
                              </div>
                        <div class="space-4"></div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
<button type="button" id="btnEspEliminar" name="btnEliminarEquipoByServicios" class="btn btn-danger" data-dismiss="modal">Eliminar</button>
</div>
</div>
</div>
</div>
<%@include file="../../Shared/LayoutBottom.jsp" %>
