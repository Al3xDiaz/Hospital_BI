<%-- 
    Document   : Create_ListaMedicamentos
    Created on : 09-01-2019, 10:01:30 PM
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
										<h4>Agregar al Inventario Medicamentos</h4>
									</div>

									<div class="widget-body">
										<div class="widget-main">

											<form class="form-horizontal" role="form">

												<div class="row">

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1">Nombre</label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Nombre" class="col-xs-10 col-sm-10" />
														</div>
													</div>

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1">Presentación</label>

														<div class="col-sm-10">
															<select >
																<option value="">--Seleccione un campo.
																</option>
																<option value="AR">Gaseosa</option>
																<option value="AZ">Líquida</option>
																<option value="AK">Semisolida</option>
																<option value="AL">Sólida</option>
															</select>
														</div>
													</div>
												</div>



												<div class="row">


													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1">Categoría     </label>

														<div class="col-sm-10">
															<select >
																<option value="">--Seleccione un campo.</option>
																<option value="AL">Analgésicos</option>
																<option value="AK">Antiácidos y antiulcerosos</option>
																<option value="AZ">Antialérgicos</option>
																<option value="AR">Antidiarreicos y laxantes</option>
																<option value="AR">Antiinfecciosos</option>
																<option value="AR">Antiinflamatorios</option>
																<option value="AR">Antipiréticos</option>
																<option value="AR">Antitusivos y
																	mucolíticos</option>
																</select>
															</div>
														</div>


														<div class="col-xs-6 form-group">
															<label class="col-sm-2 control-label no-padding-right" for="form-field-1">Estado</label>

															<div class="col-sm-10">
																<input type="text" id="form-field-1" placeholder="Estado" class="col-xs-10 col-sm-10" />
															</div>
														</div>
													</div>

												<div class="row col-md-offset-9">
                                                                                                    <a class="btn btn-primary" type="button" href="Hospital_BI/Views/ListaMedicamentos/Index_ListaMedicamentos.jsp">
														<i class="icon-ok bigger-110"></i>
														Agregar
													</a>

													<a class="btn btn-danger" type="button" href="Hospital_BI/Views/ListaMedicamentos/Index_ListaMedicamentos.jsp">
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
</div>
<%@include file="../../Shared/LayoutBottom.jsp" %>