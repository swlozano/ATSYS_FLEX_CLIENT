package BUSINESS
{
	import MODEL.MovimientoMl;
	import MODEL.UsuariosSysMl;
	
	import VO.ConsultarMovimientosVO;
	import VO.MovimientoVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class MovimientoDelegate
	{
		
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function MovimientoDelegate(responder:IResponder)
		{
			this.responder=responder;
		}
		
		public function agregarMovimiento(movimiento:MovimientoVO):void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionMovimientos");   
		   var token:AsyncToken = service.create(movimiento.idTipoMovimiento,movimiento.idPersona,movimiento.idCajaMenor,movimiento.idCentroCosto,movimiento.valor,movimiento.fechaMovimiento,movimiento.concepto); 
		   token.addResponder(responder);
		
		}
		
		public function eliminarMovimiento():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionMovimientos");
		   var token:AsyncToken = service.eliminar(MovimientoMl.getInstance().idMovimientoToEliminar,UsuariosSysMl.getInstance().usuarioIngresado.id);
		   token.addResponder(responder);
		   
		}
		
		public function listarMovimientosCajaMenor():void
		{
			this.service = ServiceLocator.getInstance().getRemoteObject("gestionMovimientos");
			var token:AsyncToken = service.listarMovimientosCajaMenor(MovimientoMl.getInstance().idCajaMenorToBuscarMov,MovimientoMl.getInstance().fechaInMov,MovimientoMl.getInstance().fechaFinMov,1);
			token.addResponder(responder);
		}
		
		public function modificarMovimiento(movimiento:MovimientoVO):void{
		
		   this.service = ServiceLocator.getInstance().getRemoteObject("gestionMovimientos");
		   var token:AsyncToken = service.actualizar(movimiento.id,UsuariosSysMl.getInstance().usuarioIngresado.id,movimiento.idTipoMovimiento,movimiento.idPersona,movimiento.idCajaMenor,movimiento.idCentroCosto,movimiento.valor,movimiento.fechaMovimiento,movimiento.concepto);
		   token.addResponder(responder);
		}
		
		public function consultarMovimientosCajaMenor(consulta:ConsultarMovimientosVO):void{
			
		   this.service = ServiceLocator.getInstance().getRemoteObject("gestionMovimientos");
		   var token:AsyncToken = service.busquedaPorCajasMenores(consulta.idsConsulta,consulta.fechaInicio,consulta.fechaFin);
	 	   token.addResponder(responder);	
		
		}
		
		public function consultarMovimientosCentroCostos(consulta:ConsultarMovimientosVO):void{
			
		   this.service = ServiceLocator.getInstance().getRemoteObject("gestionMovimientos");
		   var token:AsyncToken = service.busquedaPorCentroCosto(consulta.idsConsulta,consulta.fechaInicio,consulta.fechaFin);
	 	   token.addResponder(responder);	
		
		}
		
		public function consultarMovimientosPersonas(consulta:ConsultarMovimientosVO):void{
			
		   this.service = ServiceLocator.getInstance().getRemoteObject("gestionMovimientos");
		   var token:AsyncToken = service.busquedaPorPersonas(consulta.idsConsulta,consulta.fechaInicio,consulta.fechaFin);
	 	   token.addResponder(responder);	
		
		}

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}