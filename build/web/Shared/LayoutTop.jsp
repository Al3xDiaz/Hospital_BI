<%--
    Document   : LayoutTop
    Created on : 01-sep-2019, 12:40:10
    Author     : Chris Andino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <%HttpSession sessiones= request.getSession();
    String Consultas=sessiones.getAttribute("Consultas").toString();
  %>
  <base href="${pageContext.request.contextPath}">
  <meta charset="utf-8" />
  <title>Hospital - HBI</title>

  <meta name="description" content="Minimal empty page" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- basic styles -->

  <link href="Hospital_BI/assets/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="Hospital_BI/assets/css/font-awesome.min.css" />
  <link rel="stylesheet" href="Hospital_BI/assets/css/jquery-ui-1.10.3.full.min.css" />
  <link rel="stylesheet" href="Hospital_BI/assets/css/ace-fonts.css" />
  <link rel="stylesheet" href="Hospital_BI/assets/css/ace.min.css" />
  <link rel="stylesheet" href="Hospital_BI/assets/css/ace-rtl.min.css" />
  <link rel="stylesheet" href="Hospital_BI/assets/css/ace-skins.min.css" />
  <link rel="stylesheet" href="Hospital_BI/assets/css/animate.css" />
  <script src="Hospital_BI/assets/js/ace-extra.min.js"></script>
</head>

<body>
  <div class="navbar navbar-default" id="navbar">
	    <script type="text/javascript">
	      try {
	        ace.settings.check('navbar', 'fixed')
	      } catch (e) {}
	    </script>

	    <div class="navbar-container" id="navbar-container">
	      <div class="navbar-header pull-left">
	        <a href="Hospital_BI/MainPage.jsp" class="navbar-brand text-center">
	          <small>
	            <img src="Hospital_BI/assets/img/bi-white.png" width="60px" style="margin-left: 12px" />
	            Hospital
	          </small>
	        </a><!-- /.brand -->
	      </div><!-- /.navbar-header -->

	      <div class="navbar-header pull-right" role="navigation" style="background-color: #438eb9;">
	        <ul class="nav ace-nav">


	          <li class="">
	            <a data-toggle="dropdown" href="Hospital_BI/MainPage.jsp" class="dropdown-toggle" style="background-color: #438eb9;">
	              <img class="nav-user-photo" src="Hospital_BI/assets/img/user.png" alt="Jason's Photo" />
	              <span class="user-info">
	                <small>Welcome,</small>
	                Jason
	              </span>

	              <i class="icon-caret-down"></i>
	            </a>

	            <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
	              <li>
	                <a href="#">
	                  <i class="icon-cog"></i>
	                  Settings
	                </a>
	              </li>

	              <li class="divider"></li>

	              <li>
	                <a href="#">
	                  <i class="icon-off"></i>
	                  Logout
	                </a>
	              </li>
	            </ul>
	          </li>
	        </ul><!-- /.ace-nav -->
	      </div><!-- /.navbar-header -->
	    </div><!-- /.container -->
  </div>

  <div class="main-container" id="main-container">
    <script type="text/javascript">
      try {
        ace.settings.check('main-container', 'fixed')
      } catch (e) {}
    </script>
 <!-- Modal de Editar -->
    <div class="main-container-inner">
      <a class="menu-toggler" id="menu-toggler" href="#">
        <span class="menu-text"></span>
      </a>

      <div class="sidebar" id="sidebar">
	        <script type="text/javascript">
	          try {
	            ace.settings.check('sidebar', 'fixed')
	          } catch (e) {}
	        </script>
          <ul class="nav nav-list">
            <li>
              <a href="#" class="dropdown-toggle">
                <i class="icon-tag"></i>
                <span class="menu-text">Consultas</span>
                <b class="arrow icon-angle-down"></b>
              </a>

                
                <li>
                  <a href="Hospital_BI/Views/MedicoGeneral/Index_Consulta.jsp">
                    <i class="icon-double-angle-right"></i>
                    General
                  </a>
                </li>

                <li>
                  <a href="Hospital_BI/EspecialidadesControlador?Accion=Listar">
                    <i class="icon-double-angle-right"></i>
                    Especialidades
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/EquipoByServiciosControlador?Accion=Listar">
                    <i class="icon-double-angle-right"></i>
                    Equipo By Servicios
                  </a>
                </li>
              
            </li>
            <li>
              <a href="#" class="dropdown-toggle">
                <i class="icon-tag"></i>
                <span class="menu-text">Hospitalizaciones</span>
                <b class="arrow icon-angle-down"></b>
              </a>

              <ul class="submenu">
                <li>
                  <a href="Hospital_BI/Views/SalaCuidados/Index_tbSalaCuidados.jsp">
                    <i class="icon-double-angle-right"></i>
                    Sala de Cuidados
                  </a>
                </li>

                <li>
                  <a href="Hospital_BI/Views/SalaCuidadosIntensivos/Index_tbSalaCuidadosIntensivos.jsp">
                    <i class="icon-double-angle-right"></i>
                    Sala de Cuidados Intensivos
                  </a>
                </li>
              </ul>
            </li>
            <li>
              <a href="#" class="dropdown-toggle">
                <i class="icon-tag"></i>
                <span class="menu-text">Urgencias</span>
                <b class="arrow icon-angle-down"></b>
              </a>

              <ul class="submenu">
                <li>
                  <a href="Hospital_BI/Views/MedicoEspecialistaEmergencias/Index_Consulta.jsp">
                    <i class="icon-double-angle-right"></i>
                    General
                  </a>
                </li>

                <li>
                  <a href="Hospital_BI/Views/MedicoGeneralEmergencia/IndexConsultas.jsp">
                    <i class="icon-double-angle-right"></i>
                    Especialidades
                  </a>
                </li>
              </ul>
            </li>
            <li>
              <a href="#" class="dropdown-toggle">
                <i class="icon-tag"></i>
                <span class="menu-text">Central</span>
                <b class="arrow icon-angle-down"></b>
              </a>

              <ul class="submenu">
                <li>
                  <a href="Hospital_BI/Views/Admin_Farmacia/Index_InventarioFarmacia.jsp">
                    <i class="icon-double-angle-right"></i>
                    Inventario Farmacia
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/Cargos/Cargos.jsp">
                    <i class="icon-double-angle-right"></i>
                    Cargos
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/Empleados/Index_tbEmpleados.jsp">
                    <i class="icon-double-angle-right"></i>
                    Empleados
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/Empleados/Index_TurnoEmpleados.jsp">
                    <i class="icon-double-angle-right"></i>
                    Empleado Turno
                  </a>
                </li>

                <li>
                  <a href="Hospital_BI/Views/Empleados/Index_TurnoHorarios.jsp">
                    <i class="icon-double-angle-right"></i>
                    Turno Horarios
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/Especialidades/Index_Especialidades.jsp">
                    <i class="icon-double-angle-right"></i>
                    Especialidades
                    </a>
                </li>
                
                <li>
                  <a href="Hospital_BI/Views/Hospital/Index_InventarioHospital.jsp">
                    <i class="icon-double-angle-right"></i>
                    Inventario Hospital
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/ListaMedicamentos/Index_ListaMedicamentos.jsp">
                    <i class="icon-double-angle-right"></i>
                    Medicamentos
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/Pacientes/Index_tbPacientes.jsp">
                    <i class="icon-double-angle-right"></i>
                    Pacientes
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/Proveedor/IndexProvedor.jsp">
                    <i class="icon-double-angle-right"></i>
                    Proveedores
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/Salas/Index_Salas.jsp">
                    <i class="icon-double-angle-right"></i>
                    Salas
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/Localidad/Index_Departamento.jsp">
                    <i class="icon-double-angle-right"></i>
                    Departamentos
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/Localidad/Index_Municipio.jsp">
                    <i class="icon-double-angle-right"></i>
                    Municipios
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/ServiciosMedicos/Index_ServiciosMedicos.jsp">
                    <i class="icon-double-angle-right"></i>
                    Servicios Medicos
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/ServiciosMedicos/Index_CatalagoServiciosMedicos.jsp">
                    <i class="icon-double-angle-right"></i>
                    Catalogo Servicios Medicos
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/VentanillaConsultaGeneral/Index_ConsultasPendientes.jsp">
                    <i class="icon-double-angle-right"></i>
                    Ventanilla General
                  </a>
                </li>
                <li>
                  <a href="Hospital_BI/Views/VentanillaConsultaEmergencia/Index_ConsultasPendientes.jsp">
                    <i class="icon-double-angle-right"></i>
                    Ventanilla Urgencias
                  </a>
                </li>
              </ul>
            </li>
          </ul><!-- /.nav-list -->
	        <script type="text/javascript">
	          try {
	            ace.settings.check('sidebar', 'collapsed')
	          } catch (e) {}
	        </script>
      </div>
      <!-- Imágenes animadas - Página Principal -->
      <div class="main-content">
