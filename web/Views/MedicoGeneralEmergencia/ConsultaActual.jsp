<%-- 
    Document   : ConsultaActual
    Created on : 09-01-2019, 02:16:13 PM
    Author     : keyci
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Shared/LayoutTop.jsp" %>
		<div class="page-content">
						<div class="row">
							<div class="col-sm-12">
								<!-- PAGE CONTENT BEGINS -->
								<br /><br />
								<div class="widget-box">
									<div class="widget-header">
										<h4>Consulta actual</h4>


									</div>

									<div class="widget-body">
										<div class="widget-main">

											<form class="form-horizontal" role="form">

												<div class="row">

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Nombre </label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Nombre" class="col-xs-10 col-sm-10" />
														</div>
													</div>

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Genero </label>

														<div class="col-sm-10">
															<select class="col-md-10"  name="">
																<option value="F">Femenino</option>
																<option value="M">Masculino</option>
															</select>
														</div>
														<!-- <div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-10" />
														</div> -->
													</div>

												</div>
												<div class="row">

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Tipo de Sangre </label>

														<div class="col-sm-10">
															<input type="text" id="form-field-1" placeholder="Tipo de Sangre" class="col-xs-10 col-sm-10" />
														</div>
													</div>

													<div class="col-xs-6 form-group">
														<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Dictamén Receta </label>

														<div class="col-sm-8">
															<textarea id="form-field-11" class="autosize-transition form-control" style="overflow: hidden; overflow-wrap: break-word; resize: horizontal"></textarea>
														</div>
													</div>
												</div>
											<div class="row">
												<div class="col-xs-6 form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Medicamento </label>
													<div class="col-sm-10">
														<input type="text" id="form-field-1-Medicamento" placeholder="BuscarMedicamento" class="col-xs-10 col-sm-10" />
													</div>
												</div>

												<button class="btn btn-primary" id="btnAgregarMedicamento" type="button">
													<i class="icon-ok bigger-110"></i>Agregar
												</button>
											</div>
												<!-- dataTable -->
												<div class="row">
													<div class="col-xs-6">
														<div class="col-sm-10">

															<table class="table table-responsive" id="tabla">
							                  <thead>
							                    <tr >
							                      <th >
							                      </th>
							                      <th >
							                        Medicamento
							                      </th>
							                      <th >
							                        Presentación
							                      </th>
							                      <th >
							                        Categoria
							                      </th>
							                    </tr>
							                  </thead>
							                  <tbody >
							                    <tr >
							                      <td >
							                      </td>
							                      <!-- Campo Medicamento -->
							                      <td >ACETOMINOFEN</td>
							                      <!-- Campo Presentación -->
							                      <td >PASTILLAS</td>
							                      <!-- Campo Categoria Medicamento -->
							                      <td >ANALGESICO</td>

							                    </tr>
							                  </tbody>
							                </table>
														</div>
													</div>
												</div>

												<br>
												<div class="row col-md-offset-9">

													<button class="btn btn-primary" type="button">
														<i class="icon-ok bigger-110"></i>Aceptar
													</button>

													<button class="btn btn-danger" type="button">
														<i class="icon-ban-circle bigger-11"></i>	Cancelar
													</button>


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
