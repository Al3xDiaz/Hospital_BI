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
      <a href="Hospital_BI/Views/Empleados/frmAddEmpleado.jsp"><button class="btn btn-primary pull-right">Agregar</button></a>
    <br><br>
        <table class="table table-responsive" id="tabla">
                  <thead>
                    <tr >
                    
                      <th>
                        Id Empleado       
                      </th>
                      <th >
                        Nombre
                      </th>
                      <th >
                        Sexo
                      </th>
                      <th >
                        Fecha de Nacimiento
                      </th>
                      <th >
                        Teléfono
                      </th>
                      <th >
                        Dirección
                      </th>
                      <th >
                        Correo Electrónico
                      </th>
                      <th >
                        Fecha de Ingreso
                      </th>
                      <th> Acciones</th>
                    </tr>
                  </thead>
                  <tbody >
                    <tr >
               
                      <td >1</td>
                      <td >Jaime Noruega</td>
                      <td >Masculino</td>
                      <td >1979-09-13</td>
                      <td >
                        38790948
                      </td>

                      <td >
                        Res. Costas del Sol
                      </td>
                      <td >
                        jaimeno@bi.com
                      </td>
                      <td >
                        2013-09-12
                      </td>
                      <td >
                        <div >

                          <a class="btn btn-minier btn-warning text-center" href="Hospital_BI/Views/Empleados/frmEditEmpleado.jsp">
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
