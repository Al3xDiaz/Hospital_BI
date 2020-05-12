<%-- 
    Document   : Index_CatalagoServiciosMedicos
    Created on : 09-01-2019, 05:15:08 PM
    Author     : keyci
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
<div class="page-content">
    <div class="modal fade" id="modalAgregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Agregar Servicio Médico
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </h5>
          </div>
          <style type="text/css">
                          form#Nuevo label{
                           display: inline-block;
                           width:200px;
                           margin-right:0.5em;
                           text-align: right;
                         }
                       </style>
        <div class="modal-body">
          <form id="Nuevo" class="form-horizontal" role="form">

            <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="form-field-2">Categoría:</label>
              <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />
            </div>

            <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="form-field-2">Descripción:</label>
              <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />
            </div>

            <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="form-field-2">Costo:</label>
              <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" />
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
 
    
        <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">Editar Servicio Médico</h5>
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
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Categoría:</label>

                                       <div class="col-sm-9">
                                            <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="Cirugía"/>
                                        </div>
                  </div>

                  <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Descripción:</label>

                                       <div class="col-sm-9">
                                            <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="Corazón Abierto"/>
                                        </div>
                  </div>

                  <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Costo:</label>

                                       <div class="col-sm-9">
                                            <input type="text" id="form-field-1" class="col-xs-10 col-sm-5" value="3000"/>
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
                <h5 class="modal-title" id="exampleModalLabel">Eliminar Servicio Médico</h5>
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
    
          <div class="row">
          <div class="col-md-11">
            <h3 class="header smaller lighter blue">Listado de Servicios Médicos</h3>
            <button class="btn btn-primary pull-right" id="btnNuevo">Agregar</button>
            <br><br>
            <div class="table-responsive">
              <div id="sample-table-2_wrapper" class="dataTables_wrapper" role="grid">
                  <table class="table table-responsive" id="tabla" >
                  <thead>
                    <tr >
                      <th >
                      </th>
                      <th >
                        Id Servicio
                      </th>
                      <th >
                        Categoría
                      </th>
                      <th >
                        Descripción
                      </th>
                      <th >
                        Costo
                      </th>
                      <th >Acciones</th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr >
                      <td >
                      </td>

                      <td >
                        1
                      </td>
                      <td >Cirugia</td>
                      <td >Corazon Abierto</td>
                      <td >3000</td>
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

        <form id="id-message-form" class="hide form-horizontal message-form  col-xs-12">
          <div class="">
            <div class="form-group">
              <label class="col-sm-3 control-label no-padding-right" for="form-field-recipient">Recipient:</label>

              <div class="col-sm-9">
                <span class="input-icon">
                  <input type="email" name="recipient" id="form-field-recipient" data-value="alex@doe.com" value="alex@doe.com" placeholder="Recipient(s)">
                  <i class="icon-user"></i>
                </span>
              </div>
            </div>

            <div class="hr hr-18 dotted"></div>

            <div class="form-group">
              <label class="col-sm-3 control-label no-padding-right" for="form-field-subject">Subject:</label>

              <div class="col-sm-6 col-xs-12">
                <div class="input-icon block col-xs-12 no-padding">
                  <input maxlength="100" type="text" class="col-xs-12" name="subject" id="form-field-subject" placeholder="Subject">
                  <i class="icon-comment-alt"></i>
                </div>
              </div>
            </div>

            <div class="hr hr-18 dotted"></div>

            <div class="form-group">
              <label class="col-sm-3 control-label no-padding-right">
                <span class="inline space-24 hidden-480"></span>
                Message:
              </label>

              <div class="col-sm-9">
                <div class="wysiwyg-editor"></div>
              </div>
            </div>

            <div class="hr hr-18 dotted"></div>

            <div class="form-group no-margin-bottom">
              <label class="col-sm-3 control-label no-padding-right">Attachments:</label>

              <div class="col-sm-9">
                <div id="form-attachments">
                  <input type="file" name="attachment[]">
                </div>
              </div>
            </div>

            <div class="align-right">
              <button id="id-add-attachment" type="button" class="btn btn-sm btn-danger">
                <i class="icon-paper-clip bigger-140"></i>
                Add Attachment
              </button>
            </div>

            <div class="space"></div>
          </div>
        </form>

        <div class="hide message-content" id="id-message-content">
          <div class="message-header clearfix">
            <div class="pull-left">
              <span class="blue bigger-125"> Clik to open this message </span>

              <div class="space-4"></div>

              <i class="icon-star orange2 mark-star"></i>

              &nbsp;
              <img class="middle" alt="John's Avatar" src="../../assets/avatars/avatar.png" width="32">
              &nbsp;
              <a href="../../#" class="sender">John Doe</a>

              &nbsp;
              <i class="icon-time bigger-110 orange middle"></i>
              <span class="time">Today, 7:15 pm</span>
            </div>

            <div class="action-buttons pull-right">
              <a href="#">
                <i class="icon-reply green icon-only bigger-130"></i>
              </a>

              <a href="#">
                <i class="icon-mail-forward blue icon-only bigger-130"></i>
              </a>

              <a href="#">
                <i class="icon-trash red icon-only bigger-130"></i>
              </a>
            </div>
          </div>

          <div class="hr hr-double"></div>

          <div class="message-body">
            <p>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>

            <p>
              Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
            </p>

            <p>
              Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
            </p>

            <p>
              Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>

            <p>
              Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
            </p>

            <p>
              Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
            </p>
          </div>

          <div class="hr hr-double"></div>

          <div class="message-attachment clearfix">
            <div class="attachment-title">
              <span class="blue bolder bigger-110">Attachments</span>
              &nbsp;
              <span class="grey">(2 files, 4.5 MB)</span>

              <div class="inline position-relative">
                <a href="../../#" data-toggle="dropdown" class="dropdown-toggle">
                  &nbsp;
                  <i class="icon-caret-down bigger-125 middle"></i>
                </a>

                <ul class="dropdown-menu dropdown-lighter">
                  <li>
                    <a href="#">Download all as zip</a>
                  </li>

                  <li>
                    <a href="#">Display in slideshow</a>
                  </li>
                </ul>
              </div>
            </div>

            &nbsp;
            <ul class="attachment-list pull-left list-unstyled">
              <li>
                <a href="../../#" class="attached-file inline">
                  <i class="icon-file-alt bigger-110 middle"></i>
                  <span class="attached-name middle">Document1.pdf</span>
                </a>

                <div class="action-buttons inline">
                  <a href="#">
                    <i class="icon-download-alt bigger-125 blue"></i>
                  </a>

                  <a href="#">
                    <i class="icon-trash bigger-125 red"></i>
                  </a>
                </div>
              </li>

              <li>
                <a href="../../#" class="attached-file inline">
                  <i class="icon-film bigger-110 middle"></i>
                  <span class="attached-name middle">Sample.mp4</span>
                </a>

                <div class="action-buttons inline">
                  <a href="#">
                    <i class="icon-download-alt bigger-125 blue"></i>
                  </a>

                  <a href="#">
                    <i class="icon-trash bigger-125 red"></i>
                  </a>
                </div>
              </li>
            </ul>

            <div class="attachment-images pull-right">
              <div class="vspace-sm-4"></div>

              <div>
                <img width="36" alt="image 4" src="../../assets/images/gallery/thumb-4.jpg">
                <img width="36" alt="image 3" src="../../assets/images/gallery/thumb-3.jpg">
                <img width="36" alt="image 2" src="../../assets/images/gallery/thumb-2.jpg">
                <img width="36" alt="image 1" src="../../assets/images/gallery/thumb-1.jpg">
              </div>
            </div>
          </div>
        </div><!-- /.message-content -->

        <!-- PAGE CONTENT ENDS -->
      </div><!-- /.col -->
</div>
<%@include file="../../Shared/LayoutBottom.jsp" %>
