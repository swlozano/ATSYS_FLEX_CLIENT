package CONTROL
{
	import COMMAND.CentroCosto.AddCentroCostoCommand;
	import COMMAND.CentroCosto.EliminarCentroCostoCommand;
	import COMMAND.CentroCosto.ListarCentroCostoCommand;
	import COMMAND.CentroCosto.ModificarCentroCostoCommand;
	import COMMAND.Contratos.AddContratoCommand;
	import COMMAND.Contratos.CrearAdendo;
	import COMMAND.Contratos.GenerarCausacionNominaCommand;
	import COMMAND.Contratos.GenerarCausacionPserviciosCommand;
	import COMMAND.Contratos.GenerarValoresFormaPagoCommand;
	import COMMAND.Contratos.GuardarNuevasFechasPagoCommand;
	import COMMAND.Contratos.ListHistoriContratoCommand;
	import COMMAND.Contratos.ListarAdendosCommand;
	import COMMAND.Contratos.ListarContratoCommand;
	import COMMAND.Contratos.ListarDatosLiquidacionCommand;
	import COMMAND.Contratos.ListarRetencionesPagoCommand;
	import COMMAND.Contratos.ListarTerminacionesContratoPorRespuestaCommand;
	import COMMAND.Contratos.ListarTipoContratoCommand;
	import COMMAND.Contratos.ListarTipoPagoCommand;
	import COMMAND.Contratos.ListarValorFPagoXContratoCommand;
	import COMMAND.Contratos.ModificarTerminacionContratoCommand;
	import COMMAND.Contratos.TerminarContratoCommand;
	import COMMAND.CuentasCobro.CambiarEstadoCuentaCobroCommand;
	import COMMAND.CuentasCobro.FiltrarContratosCommand;
	import COMMAND.CuentasCobro.FiltrarxFechasCommand;
	import COMMAND.CuentasCobro.FiltrarxRhCommand;
	import COMMAND.CuentasCobro.ListarTodoCommand;
	import COMMAND.CuentasPorPagar.AgregarCuentaPorPagarCommand;
	import COMMAND.CuentasPorPagar.EliminarCuentaPorPagarCommand;
	import COMMAND.CuentasPorPagar.ListarCuentasPorPagarCommand;
	import COMMAND.CuentasPorPagar.ListarEstadosCuentasPagarCommand;
	import COMMAND.CuentasPorPagar.ListarGeneradorCuentasPagarCommand;
	import COMMAND.CuentasPorPagar.ModificarCuentaPorPagarCommand;
	import COMMAND.CuentasPorPagar.ModificarEstadoCuentaPorPagarCommand;
	import COMMAND.Factura.AddAbonoFacturaCommand;
	import COMMAND.Factura.AddFacturaCommand;
	import COMMAND.Factura.EliminarAbonoFacturaCommand;
	import COMMAND.Factura.EliminarFacturaCommand;
	import COMMAND.Factura.GenerarReporteFacturaCommand;
	import COMMAND.Factura.ListarAbonosFacturaCommand;
	import COMMAND.Factura.ListarFacturaCommand;
	import COMMAND.Factura.ListarIvasCommand;
	import COMMAND.Factura.ListarRetencionesCommand;
	import COMMAND.Factura.ModificarAbonoFacturaCommand;
	import COMMAND.Factura.ModificarFacturaCommand;
	import COMMAND.Liquidacion.CrearLiquidacionCommand;
	import COMMAND.Liquidacion.EliminarLiquidacionCommand;
	import COMMAND.Liquidacion.GenerarLiquidacionCommand;
	import COMMAND.Liquidacion.ListarFormulaCommand;
	import COMMAND.Liquidacion.ListarLiquidacionCommand;
	import COMMAND.Liquidacion.ObtenerDiasTrabajadosCommand;
	import COMMAND.Movimientos.AddMovimientoCommand;
	import COMMAND.Movimientos.ConsultarMovimientosCajaMenorCommand;
	import COMMAND.Movimientos.ConsultarMovimientosCentroCostoCommand;
	import COMMAND.Movimientos.ConsultarMovimientosPersonasCommand;
	import COMMAND.Movimientos.EliminarMovimientoCommand;
	import COMMAND.Movimientos.ListarMovimientosCajaMenorCommand;
	import COMMAND.Movimientos.ModificarMovimientosCommand;
	import COMMAND.Oficio.AddOficioCommand;
	import COMMAND.Oficio.EliminarOficioCommand;
	import COMMAND.Oficio.ListarOficioCommand;
	import COMMAND.Oficio.ModificarOficioCommand;
	import COMMAND.RecursoHumano.AddCuentaBancariaCommand;
	import COMMAND.RecursoHumano.AddRecursoHumanoCommand;
	import COMMAND.RecursoHumano.EliminarCuentaBancariaCommand;
	import COMMAND.RecursoHumano.ListarAFPRecursoHumanoCommand;
	import COMMAND.RecursoHumano.ListarArpRecHumanoCommand;
	import COMMAND.RecursoHumano.ListarBancosCommand;
	import COMMAND.RecursoHumano.ListarCiudadesRecHumanoCommand;
	import COMMAND.RecursoHumano.ListarCuentasBancariasCommand;
	import COMMAND.RecursoHumano.ListarEpsRecHumanoCommand;
	import COMMAND.RecursoHumano.ListarPaisesRecHumanoCommand;
	import COMMAND.RecursoHumano.ListarRecursoHumanoCommand;
	import COMMAND.RecursoHumano.ListarTipoCuentaBancariaCommand;
	import COMMAND.RecursoHumano.ModificarCuentaBancariaCommand;
	import COMMAND.RecursoHumano.ModificarRecursoHumanoCommand;
	import COMMAND.SolicitudesServicios.AddFichaPermisoCommand;
	import COMMAND.SolicitudesServicios.EliminarFichasCommand;
	import COMMAND.SolicitudesServicios.ListarFichasContratoCommand;
	import COMMAND.SolicitudesServicios.ModificarFichaPermisoCommand;
	import COMMAND.ValorFormaPago.ListFechasPagoVFPtoVisualizarCommand;
	import COMMAND.ValorFormaPago.ListarFechasPagoCommand;
	import COMMAND.ValorFormaPago.ListarVFPToVisualizarCommand;
	import COMMAND.cajamenor.AddCajaMenorCommand;
	import COMMAND.cajamenor.ConfigurarCajaMenorCommad;
	import COMMAND.cajamenor.EliminarCajaMenorCommand;
	import COMMAND.cajamenor.ListarCajaMenorCommand;
	import COMMAND.cajamenor.ListarCajasUsuarioEspecificoCommand;
	import COMMAND.cajamenor.ListarTodasLasCajasCommand;
	import COMMAND.causaciones.CalcularCausacionNominaCommand;
	import COMMAND.causaciones.CalcularCausacionPsCommand;
	import COMMAND.causaciones.ConsultarExistenciaCausacionCommand;
	import COMMAND.causaciones.CrearCausacionNominaCommand;
	import COMMAND.causaciones.CrearCausacionPsCommand;
	import COMMAND.causaciones.ListarBonificacionesCommand;
	import COMMAND.causaciones.ListarCausacionNominaXfechaCorte;
	import COMMAND.causaciones.ListarCausacionPsXfechaCorteCommand;
	import COMMAND.causaciones.ListarDesduccionesCommand;
	import COMMAND.causaciones.ListarFechasCausadasCommand;
	import COMMAND.causaciones.ListarProvisionesCommand;
	import COMMAND.personas.AddPersonasCommand;
	import COMMAND.personas.ComprobarExistenciaPersonasCommand;
	import COMMAND.personas.EliminarPersonasCommand;
	import COMMAND.personas.ListarPersonasCommand;
	import COMMAND.personas.ModificarPersonasCommand;
	import COMMAND.roles.AddRolesSysCommand;
	import COMMAND.roles.EliminarRolesCommand;
	import COMMAND.roles.ListarPermisosCommand;
	import COMMAND.roles.ListarRolesSysCommand;
	import COMMAND.roles.ModificarRolesCommand;
	import COMMAND.usuarios.AddUsuariosSysCommand;
	import COMMAND.usuarios.EliminarUsuariosSysCommand;
	import COMMAND.usuarios.ListarUsuariosCommand;
	import COMMAND.usuarios.ModificarUsuariosSysCommand;
	import COMMAND.usuarios.ValidarUsuariosSysCommand;
	
	import EVENT.AbonoFacturaEvent;
	import EVENT.CajaMenorEvent;
	import EVENT.CausacionEvent;
	import EVENT.CentroCostoEvent;
	import EVENT.ConsultasMovimientosEvent;
	import EVENT.ContratoEvent;
	import EVENT.CuentasCobroEvent;
	import EVENT.CuentasPorPagarEvent;
	import EVENT.FacturaEvent;
	import EVENT.LiquidacionEvent;
	import EVENT.MovimientoEvent;
	import EVENT.OficioEvent;
	import EVENT.PermisosEvent;
	import EVENT.PersonaEvent;
	import EVENT.RecursoHumanoEvent;
	import EVENT.RolesSysEvent;
	import EVENT.SolicitudesServiciosEvent;
	import EVENT.UsuariosSysEvent;
	import EVENT.ValorFpagoEvent;
	
	import com.adobe.cairngorm.control.FrontController;


	public class Controller extends FrontController
	{
		public function Controller()
		{
			
			//Usuarios
			addCommand(UsuariosSysEvent.ADICIONAR_US,AddUsuariosSysCommand);
			addCommand(UsuariosSysEvent.MODIFICAR_USUARIOS,ModificarUsuariosSysCommand);
			addCommand(UsuariosSysEvent.LISTAR_US,ListarUsuariosCommand);
			addCommand(UsuariosSysEvent.ELIMINAR_USUARIOS,EliminarUsuariosSysCommand);
			addCommand(UsuariosSysEvent.VALIDAR_USUARIOS,ValidarUsuariosSysCommand);
			///Roles
			addCommand(RolesSysEvent.LISTAR_ROLES,ListarRolesSysCommand);
			addCommand(PermisosEvent.LISTAR_PERMISOS,ListarPermisosCommand);
			addCommand(RolesSysEvent.ADICIONAR_ROLES,AddRolesSysCommand);
			addCommand(RolesSysEvent.MODIFICAR_ROLES,ModificarRolesCommand);
			addCommand(RolesSysEvent.ELIMINAR_ROLES,EliminarRolesCommand);
			//Caja Menor
			addCommand(CajaMenorEvent.ADICIONAR_CAJA_MENOR,AddCajaMenorCommand);
			addCommand(CajaMenorEvent.CONFIGURAR_CAJA_MENOR,ConfigurarCajaMenorCommad);
			addCommand(CajaMenorEvent.LISTAR_CAJA_MENOR,ListarCajaMenorCommand);
			addCommand(CajaMenorEvent.ELIMINAR_CAJA_MENOR,EliminarCajaMenorCommand);
			addCommand(CajaMenorEvent.LISTAR_CAJA_USUARIO_ESPECIFICO,ListarCajasUsuarioEspecificoCommand);
			addCommand(CajaMenorEvent.LISTAR_TODA_CAJA,ListarTodasLasCajasCommand);
			//Movimientos
			addCommand(MovimientoEvent.ADICIONAR_MOVIMIENTO,AddMovimientoCommand);
			addCommand(MovimientoEvent.LISTAR_MOVIMIENTO_CAJA_MENOR,ListarMovimientosCajaMenorCommand);
			addCommand(MovimientoEvent.MODIFICAR_MOVIMIENTO,ModificarMovimientosCommand);
			addCommand(MovimientoEvent.ELIMINAR_MOVIMIENTO,EliminarMovimientoCommand);
			addCommand(ConsultasMovimientosEvent.CONSULTAR_MOVIMIENTOS_CAJAS_MENORES,ConsultarMovimientosCajaMenorCommand);
			addCommand(ConsultasMovimientosEvent.CONSULTAR_MOVIMIENTOS_CENTROS_COSTO,ConsultarMovimientosCentroCostoCommand);
			addCommand(ConsultasMovimientosEvent.CONSULTAR_MOVIMIENTOS_PERSONAS,ConsultarMovimientosPersonasCommand);
			//Personas
			addCommand(PersonaEvent.ADICIONAR_PERSONA,AddPersonasCommand);
			addCommand(PersonaEvent.MODIFICAR_PERSONA,ModificarPersonasCommand);
			addCommand(PersonaEvent.LISTAR_PERSONAS,ListarPersonasCommand);
			addCommand(PersonaEvent.ELIMINAR_PERSONA,EliminarPersonasCommand);
			addCommand(PersonaEvent.COMPROBAR_EXISTENCIA_PERSONAS,ComprobarExistenciaPersonasCommand);
			//Centro de Costo
			addCommand(CentroCostoEvent.ADICIONAR_CENTRO_COSTO,AddCentroCostoCommand);
			addCommand(CentroCostoEvent.MODIFICAR_CENTRO_COSTO,ModificarCentroCostoCommand);
			addCommand(CentroCostoEvent.ELIMINAR_CENTRO_COSTO,EliminarCentroCostoCommand);
			addCommand(CentroCostoEvent.LISTAR_CENTRO_COSTO,ListarCentroCostoCommand);
			//Factura
			addCommand(FacturaEvent.ADICIONAR_FACTURA,AddFacturaCommand);
			addCommand(FacturaEvent.LISTAR_FACTURA,ListarFacturaCommand);
			addCommand(FacturaEvent.LISTAR_IVAS,ListarIvasCommand);
			addCommand(FacturaEvent.LISTAR_RETENCIONES,ListarRetencionesCommand);
			addCommand(FacturaEvent.ELIMINAR_FACTURA,EliminarFacturaCommand);
			addCommand(FacturaEvent.MODIFICAR_FACTURA,ModificarFacturaCommand);
			addCommand(AbonoFacturaEvent.ADICIONAR_ABONO_FACTURA,AddAbonoFacturaCommand);
			addCommand(AbonoFacturaEvent.LISTAR_ABONO_FACTURA,ListarAbonosFacturaCommand);
			addCommand(AbonoFacturaEvent.MODIFICAR_ABONO_FACTURA,ModificarAbonoFacturaCommand);
			addCommand(AbonoFacturaEvent.ELIMINAR_ABONO_FACTURA,EliminarAbonoFacturaCommand);
			addCommand(FacturaEvent.REPORTES_FACTURAS,GenerarReporteFacturaCommand);
			//Recurso Humano
			addCommand(RecursoHumanoEvent.LISTAR_PAISES_RECURSO_HUMANO,ListarPaisesRecHumanoCommand);
			addCommand(RecursoHumanoEvent.LISTAR_CIUDADES_RECURSO_HUMANO,ListarCiudadesRecHumanoCommand);
			addCommand(RecursoHumanoEvent.LISTAR_ARP_RECURSO_HUMANO,ListarArpRecHumanoCommand);
			addCommand(RecursoHumanoEvent.LISTAR_EPS_RECURSO_HUMANO,ListarEpsRecHumanoCommand);
			addCommand(RecursoHumanoEvent.LISTAR_AFP_RECURSO_HUMANO,ListarAFPRecursoHumanoCommand);
			addCommand(RecursoHumanoEvent.LISTAR_RECURSO_HUMANO,ListarRecursoHumanoCommand);
			addCommand(RecursoHumanoEvent.ADICIONAR_RECURSO_HUMANO,AddRecursoHumanoCommand);
			addCommand(RecursoHumanoEvent.MODIFICAR_RECURSO_HUMANO,ModificarRecursoHumanoCommand);
			addCommand(RecursoHumanoEvent.LISTAR_BANCOS,ListarBancosCommand);
			addCommand(RecursoHumanoEvent.LISTAR_TIPO_CUENTA,ListarTipoCuentaBancariaCommand);
			addCommand(RecursoHumanoEvent.ADICIONAR_CUENTA_BANCARIA,AddCuentaBancariaCommand);
			addCommand(RecursoHumanoEvent.LISTAR_CUENTA_BANCARIA,ListarCuentasBancariasCommand);
			addCommand(RecursoHumanoEvent.MODIFICAR_CUENTA_BANCARIA,ModificarCuentaBancariaCommand);
			addCommand(RecursoHumanoEvent.ELIMINAR_CUENTA_BANCARIA,EliminarCuentaBancariaCommand);
			//Oficio
			addCommand(OficioEvent.ADICIONAR_OFICIO,AddOficioCommand);
			addCommand(OficioEvent.LISTAR_OFICIO,ListarOficioCommand);
			addCommand(OficioEvent.MODIFICAR_OFICIO,ModificarOficioCommand);
			addCommand(OficioEvent.ELIMINAR_OFICIO,EliminarOficioCommand);
			//Contrato
			addCommand(ContratoEvent.ADICIONAR_CONTRATO,AddContratoCommand);
			addCommand(ContratoEvent.LISTAR_TIPO_CONTRATO,ListarTipoContratoCommand);
			addCommand(ContratoEvent.LISTAR_TIPO_PAGO,ListarTipoPagoCommand);
			addCommand(ContratoEvent.LISTAR_RETENCIONES_PAGO,ListarRetencionesPagoCommand);
			addCommand(ContratoEvent.LISTAR_CONTRATO,ListarContratoCommand);
			addCommand(ContratoEvent.TERMINAR_CONTRATO,TerminarContratoCommand);
			addCommand(ContratoEvent.LISTAR_TERMINACIONES_CONTRATO_POR_RESPUESTA,ListarTerminacionesContratoPorRespuestaCommand);
			addCommand(ContratoEvent.MODIFICAR_TERMINAR_CONTRATO,ModificarTerminacionContratoCommand);
			addCommand(ValorFpagoEvent.LISTAR_FECHAS_PAGO,ListarFechasPagoCommand);
			addCommand(ContratoEvent.GENERAR_CAUSACIONES_NOMINA,GenerarCausacionNominaCommand);
			addCommand(ContratoEvent.GENERAR_CAUSACIONES_PS,GenerarCausacionPserviciosCommand);
			addCommand(ContratoEvent.CONSULTAR_EXISTENCIA_CAUSACIONES,ConsultarExistenciaCausacionCommand);
			addCommand(ContratoEvent.LISTAR_CAUSACIONOMINA_POR_FECHACORTE,ListarCausacionNominaXfechaCorte);
			addCommand(ContratoEvent.LISTAR_CAUSACIONPS_POR_FECHACORTE,ListarCausacionPsXfechaCorteCommand);
			addCommand(ValorFpagoEvent.GENERAR_VALORES_FORMA_PAGO,GenerarValoresFormaPagoCommand);
			addCommand(ValorFpagoEvent.GUARDAR_NUEVAS_FECHAS_PAGO,GuardarNuevasFechasPagoCommand);
			
			addCommand(ValorFpagoEvent.LISTAR_VFP_TO_VISUALIZAR,ListarVFPToVisualizarCommand);
			addCommand(ValorFpagoEvent.LISTAR_FECHAS_PAGO_BY_VFP,ListFechasPagoVFPtoVisualizarCommand);
			
			addCommand(ContratoEvent.LISTAR_VALORESFPAGO_X_CONTRATO,ListarValorFPagoXContratoCommand);
			addCommand(ContratoEvent.CREAR_ADENDO,CrearAdendo);
			addCommand(ContratoEvent.LISTAR_ADENDO,ListarAdendosCommand);
			//SolicitudesServicios
			addCommand(SolicitudesServiciosEvent.ADICIONAR_FICHA_PERMISO,AddFichaPermisoCommand);
			addCommand(SolicitudesServiciosEvent.LISTAR_FICHA_PERMISO,ListarFichasContratoCommand);
			addCommand(SolicitudesServiciosEvent.ELIMINAR_FICHA_PERMISO,EliminarFichasCommand);
			addCommand(SolicitudesServiciosEvent.MODIFICAR_FICHA_PERMISO,ModificarFichaPermisoCommand);
			//CuentasCobro
			addCommand(CuentasCobroEvent.FILTRAR_POR_CONTRATO,FiltrarContratosCommand);
			addCommand(CuentasCobroEvent.FILTRAR_POR_FECHAS,FiltrarxFechasCommand);
			addCommand(CuentasCobroEvent.FILTRAR_POR_REC_HUMANO,FiltrarxRhCommand);
			addCommand(CuentasCobroEvent.LISTAR_TODO,ListarTodoCommand);
			addCommand(CuentasCobroEvent.CAMBIAR_ESTADO,CambiarEstadoCuentaCobroCommand);
			//liquidacion contrato
			addCommand(LiquidacionEvent.LISTAR_LIQUIDACION,ListarLiquidacionCommand);
			addCommand(LiquidacionEvent.LISTAR_FORMULAS_X_TIPO,ListarFormulaCommand);
			addCommand(LiquidacionEvent.OBTENER_DIAS_TRABAJADOS,ObtenerDiasTrabajadosCommand);
			addCommand(LiquidacionEvent.GENERAR_LIQUIDACION,GenerarLiquidacionCommand);
			addCommand(LiquidacionEvent.CREAR_LIQUIDACION,CrearLiquidacionCommand);
			addCommand(LiquidacionEvent.ELIMINAR_LIQUIDACION,EliminarLiquidacionCommand);
			
			addCommand(CausacionEvent.LISTAR_BONIFICACIONES,ListarBonificacionesCommand);
			addCommand(CausacionEvent.LISTAR_DEDUCCIONES,ListarDesduccionesCommand);
			addCommand(CausacionEvent.LISTAR_PROVISIONES,ListarProvisionesCommand);
			addCommand(CausacionEvent.CREAR_CAUSACIONES,CrearCausacionNominaCommand);
			addCommand(CausacionEvent.CALCULAR_CAUSACION_NOMINA,CalcularCausacionNominaCommand);
			addCommand(ContratoEvent.LISTAR_HITORIAL_TERMINACONES,ListHistoriContratoCommand);
			addCommand(LiquidacionEvent.LISTAR_DATOS_LIQUIDACION,ListarDatosLiquidacionCommand );
			addCommand(CausacionEvent.CALCULAR_CAUSACION_PS,CalcularCausacionPsCommand);
			addCommand(ContratoEvent.LISTAR_FECHAS_CAUSADAS,ListarFechasCausadasCommand);
			
			//CUENTAS POR PAGAR/////////////////////////////////////////////////
			
			addCommand(CuentasPorPagarEvent.LISTAR_ESTADO_CUENTA_X_PAGAR,ListarEstadosCuentasPagarCommand);
			addCommand(CuentasPorPagarEvent.LISTAR_GENERADOR_CUENTA_X_PAGAR,ListarGeneradorCuentasPagarCommand);
			addCommand(CuentasPorPagarEvent.ADICIONAR_CUENTA_X_PAGAR,AgregarCuentaPorPagarCommand);
			addCommand(CuentasPorPagarEvent.LISTAR_CUENTA_X_PAGAR,ListarCuentasPorPagarCommand);

			addCommand(CausacionEvent.CREAR_CAUSACIONES_PS,CrearCausacionPsCommand);
			addCommand(CuentasPorPagarEvent.MODIFICAR_CUENTA_X_PAGAR,ModificarCuentaPorPagarCommand);
			addCommand(CuentasPorPagarEvent.ELIMINAR_CUENTA_X_PAGAR,EliminarCuentaPorPagarCommand);

			addCommand(CuentasPorPagarEvent.MODIFICAR_ESTADO_CUENTA_X_PAGAR,ModificarEstadoCuentaPorPagarCommand);

		}
		
	}
}














