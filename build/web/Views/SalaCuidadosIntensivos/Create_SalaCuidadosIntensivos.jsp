<%-- 
    Document   : Create_SalaCuidadosIntensivos
    Created on : 09-01-2019, 03:06:56 PM
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
										<h4>Agregar paciente a cuidados intensivos</h4>

									</div>

									<div class="widget-body">
										<div class="widget-main">

											<form class="form-horizontal" role="form">

												<div class="row">
													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Nombre Paciente </label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Nombre Paciente" class="col-xs-10 col-sm-10" />
														</div>
													</div>
													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Médico Asignado</label>

														<div class="col-sm-10">
															<select class="col-xs-10 col-sm-10" id="form-field-select-3" >
																<option value="">--Seleccione un medico.</option>
																<option value="AL">Igor Padilla</option>
																<option value="AK">Carlos Perez</option>
															</select>
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Especialidad </label>

														<div class="col-sm-10">
															<select class="col-xs-10 col-sm-10" id="form-field-select-3" >
																<option value="">--Seleccione una especialidad.</option>
																<option value="AL">Oncologia</option>
																<option value="AK">Dermatologia</option>
																<option value="AK">Traumatologia</option>
																<option value="AK">Cardiologia</option>
															</select>
														</div>
													</div>
													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1">Sala</label>
														<div class="col-sm-10">
															<select class="col-xs-10 col-sm-10" id="form-field-select-3" >
																<option value="">--Seleccione una sala.</option>
																<option value="AL">101</option>
																<option value="AK">102</option>
																<option value="AK">103</option>
																<option value="AK">201</option>
																<option value="AK">202</option>
															</select>
														</div>
													</div>
												</div>


												<div class="row">
													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Razón</label>
														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Razón" class="col-xs-10 col-sm-10" />
														</div>
													</div>
													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Fecha Ingreso </label>
														<div class="col-sm-9">
															<div class="input-group">
																<input class="form-control date-picker" id="id-date-picker-1" type="text" value="2019-08-30" data-date-format="yyyy-mm-dd" />
																<span class="input-group-addon">
																	<i class="icon-calendar bigger-110"></i>
																</span>
															</div>
														</div>
													</div>
												</div>

												<div class="row col-md-offset-9">
												<a href="Hospital_BI/Views/SalaCuidadosIntensivos/Index_tbSalaCuidadosIntensivos.jsp">	<button class="btn btn-info" type="button" >
														<i class="icon-ok bigger-110"></i>
														Aceptar
													</button></a>

													<a href="Hospital_BI/Views/SalaCuidadosIntensivos/Index_tbSalaCuidadosIntensivos.jsp">	<button class="btn btn-danger" type="button">
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