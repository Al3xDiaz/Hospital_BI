<%-- 
    Document   : Edit_SalaCuidados
    Created on : 09-01-2019, 02:58:06 PM
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
										<h4>Formulario Agregar Paciente Internado</h4>
										<h4 class="hide">Formulario Editar Paciente Internado</h4>

									</div>

									<div class="widget-body">
										<div class="widget-main">

											<form class="form-horizontal" role="form">

												<div class="row">

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Id Consulta </label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Id Consulta" value="1" disabled class="col-xs-10 col-sm-10" />
														</div>
													</div>

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Id Paciente</label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Id Paciente" value="2" disabled class="col-xs-10 col-sm-10" />
														</div>
													</div>

												</div>

												<div class="row">

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Nombre Paciente </label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Nombre Paciente" value="Pablo Noruega"  class="col-xs-10 col-sm-10" />
														</div>
													</div>

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Médico Asignado</label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Médico Asignado" value="Fabiola Hernández"   class="col-xs-10 col-sm-10" />
														</div>
													</div>

												</div>

												<div class="row">

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Especialidad </label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Especialidad" value="Neurología"  class="col-xs-10 col-sm-10" />
														</div>
													</div>

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Razón</label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Razón" value="Derrame Cerebral"  class="col-xs-10 col-sm-10" />
														</div>
													</div>

												</div>


												<div class="row">

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

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Estado</label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Estado" value="Hospitalizado" class="col-xs-10 col-sm-10" />
														</div>
													</div>
												</div>

												<div class="row col-md-offset-9">

												<a href="Hospital_BI/Views/SalaCuidados/Index_tbSalaCuidados.jsp">	<button class="btn btn-info" type="button" >
														<i class="icon-ok bigger-110"></i>
														Aceptar
													</button></a>

													<a href="Hospital_BI/Views/SalaCuidados/Index_tbSalaCuidados.jsp">	<button class="btn btn-danger" type="button">
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