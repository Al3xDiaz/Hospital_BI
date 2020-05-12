<%-- 
    Document   : Update_Paciente
    Created on : 09-01-2019, 02:55:07 PM
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
									<h4>Editar Paciente</h4>


								</div>

								<div class="widget-body">
									<div class="widget-main">

										<form class="form-horizontal" role="form">

											<div class="row">
												<div class="col-xs-7 form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Identidad </label>

													<div class="col-sm-10">
														<input type="text" id="form-field-1" placeholder="Identidad" class="col-xs-10 col-sm-10" maxlength="50" value="0701-1975-19827"/>
													</div>
												</div>

												<div class="col-xs-5 form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Nombres </label>

													<div class="col-sm-10">
														<input type="text" id="form-field-1" placeholder="Nombres" class="col-xs-10 col-sm-10" maxlength="50" value="Alfonso Maria	"/>
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-xs-7 form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Apellidos </label>

													<div class="col-sm-10">
														<input type="text" id="form-field-1" placeholder="Nombres" class="col-xs-10 col-sm-10" maxlength="50" value="Martinez del Cid	"/>
													</div>
												</div>

												<div class="col-xs-5 form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-1">Genero</label>

													<div class="col-sm-10">
														<select >
															<option value="">--Seleccione un campo.
															</option>
															<option value="F">F</option>
															<option value="M">M</option>

														</select>
													</div>
												</div>

											</div>


											<div class="row">

												<div class="col-xs-7 form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-1">Telefono</label>

													<div class="col-sm-10">
														<input type="text" id="form-field-1" placeholder="Telefono" class="col-xs-10 col-sm-10" maxlength="20" value="(+504) 8976-0979	"/>
													</div>
												</div>


												<div class="col-xs-5 form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-1">Tipo Sangre</label>

													<div class="col-sm-10">
														<select>
															<option value="">--Seleccione un campo.
															</option>
															<option value="">O+</option>
															<option value="">O-</option>
															<option value="">B-</option>

														</select>
													</div>
												</div>
											</div>


											<div class="row">

												<div class="col-xs-7 form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-1">Departamento</label>

													<div class="col-sm-10">
														<select>
															<option value="">--Seleccione un campo.
															</option>
															<option value="0501">San Pedro Sula</option>
															<option value="0801">Teguigalpa</option>
														</select>
													</div>
												</div>

												<div class="col-xs-5 form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-1">Municipio</label>

													<div class="col-sm-10">
														<select >
															<option value="">--Seleccione un campo.
															</option>
															<option value="0501">San Pedro Sula</option>
															<option value="0801">Teguigalpa</option>
														</select>
													</div>
												</div>

											</div>




											<div class="row col-md-offset-9">

												<a class="btn btn-primary" type="button" href="Hospital_BI/Views/Pacientes/Index_tbPacientes.jsp">
													<i class="icon-ok bigger-110"></i>
													Aceptar
												</a>

												<a class="btn btn-danger" type="button" href="Hospital_BI/Views/Pacientes/Index_tbPacientes.jsp">
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
				</div><!-- /.page-content -->
<%@include file="../../Shared/LayoutBottom.jsp" %>