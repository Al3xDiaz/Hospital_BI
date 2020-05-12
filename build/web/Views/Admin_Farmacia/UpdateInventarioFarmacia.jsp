<%-- 
    Document   : UpdateInventarioFarmacia
    Created on : 09-01-2019, 09:29:23 PM
    Author     : keyci
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
<div class="page-content">
 				<div class="row">
						<div class="col-sm-12">
							<!-- PAGE CONTENT BEGINS -->
							<div class="widget-box">
								<div class="widget-header">
									<h4>Editar Inventario Farmacia</h4>


								</div>

								<div class="widget-body">
									<div class="widget-main">

										<form class="form-horizontal" role="form">

											<div class="row">

												<div class="col-xs-6 form-group">
													<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Proveedor ID </label>

													<div class="col-sm-6">
														<select >
															<option value="">&nbsp;</option>
															<option value="AL">Astropharma</option>

														</select>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-xs-6 form-group">
													<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Unidad Stock </label>

													<div class="col-sm-6">
														<input type="number" id="form-field-1" class="col-xs-10 col-sm-10" />
													</div>
												</div>
											</div>
											

									<div class="row col-md-offset-9">

										<a class="btn btn-primary" type="button" href="Hospital_BI/Views/Admin_Farmacia/Index_InventarioFarmacia.jsp">
											<i class="icon-ok bigger-110"></i>
											Aceptar
										</a>

										<a class="btn btn-danger" type="button" href="Hospital_BI/Views/Admin_Farmacia/Index_InventarioFarmacia.jsp">
											<i class="icon-ban-circle bigger-11"></i>
											Cancelar
										</a>


									</div>

									</form>

								</div>
							</div>
						</div>
						<!-- PAGE CONTENT ENDS -->
					</div><!-- /.col -->
				</div><!-- /.row -->
</div>
<%@include file="../../Shared/LayoutBottom.jsp" %>