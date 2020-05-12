<%-- 
    Document   : Index_InventarioFarmacia
    Created on : 09-01-2019, 09:21:30 PM
    Author     : keyci
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
<div class="page-content">
        <div class="row">
          <div class="col-md-11">
            <h3 class="header smaller lighter blue">Inventario Farmacia
            <div style="float:Right;" margin="bottom">
                <a class="btn btn-info" type="button" id="btnNuevo" href="Hospital_BI/Views/Admin_Farmacia/CreateInventarioFarmacia.jsp">
                  <i class=" bigger-110"></i>
                  Nuevo
                </a>
            </div>
            <br><br>
          </h3>
            <div class="table-responsive">
              <div id="sample-table-2_wrapper" class="dataTables_wrapper" role="grid">
                <table class="table table-responsive" id="tabla">
                  <thead>
                    <tr >
                      <th >
                      </th>
                      <th >
                        Id Inventario
                      </th>
                      <th >
                        Medicamento
                      </th>
                      <th >
                        Proveedor
                      </th>
                      <th >
                        Farmacia
                      </th>
                      <th >
                        Stock
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
                      <td >Paracetamol(250mg)</td>
                      <td >Bayer</td>
                      <td >Famarcia SPS</td>
                      <td >87</td>
                      <td >
                        <div >

                          <a class="btn btn-minier btn-warning text-center" id="btnEditar" href="Hospital_BI/Views/Admin_Farmacia/UpdateInventarioFarmacia.jsp">
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
              <a href="#" class="sender">John Doe</a>

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



          <div class="hr hr-double"></div>



            &nbsp;
            <ul class="attachment-list pull-left list-unstyled">
              <li>
                <a href="#" class="attached-file inline">
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
                <a href="#" class="attached-file inline">
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
        
         <div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true">&times;</span>
         </button>
         <h5 class="modal-title" id="exampleModalLabel">Eliminar Producto</h5>

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
</div>
<%@include file="../../Shared/LayoutBottom.jsp" %>