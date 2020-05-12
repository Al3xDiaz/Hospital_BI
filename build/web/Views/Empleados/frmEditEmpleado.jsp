<%-- 
    Document   : frmEditEmpleado
    Created on : 09-01-2019, 02:12:27 PM
    Author     : Jennifer V
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
					<div class="page-content">
						<div class="row">
							<div class="col-sm-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="widget-box">
									<div class="widget-header">
										<h4>Editar Empleado</h4>
									</div>

									<div class="widget-body">
										<div class="widget-main">

											<form class="form-horizontal" role="form">
												<div class="row">
													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Id Empleado </label>

														<div class="col-sm-10">
															<input disabled type="text" id="form-field-1" value="1" disable class="col-xs-10 col-sm-10" />
														</div>
													</div>
												</div>
												<div class="row">

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Nombre </label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" value="Jaime" class="col-xs-10 col-sm-10" />
														</div>
													</div>

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Apellido</label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" value="Noruega" class="col-xs-10 col-sm-10" />
														</div>
													</div>

												</div>

												<div class="row">

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Sexo </label>

														<div class="col-sm-10">
															<select class="width-80" id="form-field-select-3">
																<option value="AK">Masculino</option>
																<option value="AL">Femenino</option>
															</select>
														</div>
													</div>
													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Correo Electrónico </label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" value="jaimeno@bi.com" class="col-xs-10 col-sm-10" />
														</div>
													</div>

												</div>

												<div class="row">

														<div class="col-xs-6 form-group">
															<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Teléfono </label>

															<div class="col-sm-10">
																<input type="text" id="form-field-1" value="38790948" class="col-xs-10 col-sm-10" />
															</div>
														</div>

														<div class="col-xs-6 form-group">
															<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Dirección </label>

															<div class="col-sm-10">
																<input type="text" id="form-field-1" value="Res. Costas del Sol" class="col-xs-10 col-sm-10" />
															</div>
														</div>

												</div>


												<div class="row">
													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Fecha de Nacimiento </label>

														<div class="col-sm-9">
															<div class="input-group">
																<input class="form-control date-picker" id="id-date-picker-1" type="text" value="1979-09-13"data-date-format="yyyy-mm-dd" />
																<span class="input-group-addon">
																	<i class="icon-calendar bigger-110"></i>
																</span>
															</div>
														</div>
													</div>

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Fecha de Ingreso </label>

														<div class="col-sm-9">
															<div class="input-group">
																<input class="form-control date-picker" id="id-date-picker-1" type="text" value="2013-09-12" data-date-format="yyyy-mm-dd" />
																<span class="input-group-addon">
																	<i class="icon-calendar bigger-110"></i>
																</span>
															</div>
														</div>
													</div>
												</div>

												<div class="row hide">
													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Fecha Salida </label>

														<div class="col-sm-9">
															<div class="input-group">
																<input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="yyyy-mm-dd" />
																<span class="input-group-addon">
																	<i class="icon-calendar bigger-110"></i>
																</span>
															</div>
														</div>
													</div>


													<div class="col-xs-6 form-group">
															<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Razón Salida </label>
													     <div class="col-sm-10">
																	<input type="text" id="form-field-1" placeholder="Razón Salida" class="col-xs-10 col-sm-10" />
															</div>
													</div>
												</div>

												<div class="row col-md-offset-9">

												<a href="Hospital_BI/Views/Empleados/Index_tbEmpleados.jsp">	<button class="btn btn-primary" type="button" >
														<i class="icon-ok bigger-110"></i>Aceptar</button></a>

													<a href="Hospital_BI/Views/Empleados/Index_tbEmpleados.jsp">	<button class="btn btn-danger" type="button">
														<i class="icon-ban-circle bigger-11"></i>
														Cancelar
													</button></a>

												</div>

											</form>

										</div>
									</div>
								</div>
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
<%@include file="../../Shared/LayoutBottom.jsp" %>
