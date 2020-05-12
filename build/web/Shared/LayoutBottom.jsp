<%--
    Document   : LayoutBottom
    Created on : 01-sep-2019, 12:40:58
    Author     : Chris Andino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <img class="middle" alt="John's Avatar" src="Hospital_BI/assets/avatars/avatar.png" width="32">
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

    <div class="message-attachment clearfix">
      <div class="attachment-title">
        <span class="blue bolder bigger-110">Attachments</span>
        &nbsp;
        <span class="grey">(2 files, 4.5 MB)</span>

        <div class="inline position-relative">
          <a href="#" data-toggle="dropdown" class="dropdown-toggle">
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
          <img width="36" alt="image 4" src="Hospital_BI/assets/images/gallery/thumb-4.jpg">
          <img width="36" alt="image 3" src="Hospital_BI/assets/images/gallery/thumb-3.jpg">
          <img width="36" alt="image 2" src="Hospital_BI/assets/images/gallery/thumb-2.jpg">
          <img width="36" alt="image 1" src="Hospital_BI/assets/images/gallery/thumb-1.jpg">
        </div>
      </div>
    </div>
  </div><!-- /.message-content -->

<!-- basic scripts -->

<!--[if !IE]> -->

<script type="text/javascript">
window.jQuery || document.write("<script src='https://code.jquery.com/jquery-3.3.1.js'>" + "<" + "/script>");
</script>

<script type="text/javascript">
if ("ontouchend" in document) document.write("<script src='Hospital_BI/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="Hospital_BI/assets/js/bootstrap.min.js"></script>
<script src="Hospital_BI/assets/js/typeahead-bs2.min.js"></script>

<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="Hospital_BI/assets/js/jquery.dataTables.bootstrap.js"></script>
<script src="Hospital_BI/assets/js/ace-elements.min.js"></script>
<script src="Hospital_BI/assets/js/ace.min.js"></script>

<script src="Hospital_BI/assets/js/jquery-ui-1.10.3.full.min.js"></script>
<script src="Hospital_BI/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="Hospital_BI/assets/js/DataTables.js"></script>
<script src="Hospital_BI/assets/js/ModalShow.js"></script>
<script src="Hospital_BI/assets/App/EquipoByServicio.js" type="text/javascript"></script>

<!-- inline scripts related to this page -->
</body>
</html>
