package BUSINESS
{
	import MODEL.CuentasPorPagarMl;
	
	import VO.CuentaPorPagarVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class CuentasPorPagarDelegate
	{   
		
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function CuentasPorPagarDelegate(responder:IResponder)
		{
			this.responder = responder;
		}
		
		public function listarEstadoCuentaXpagar():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasXpagar");
			var token:AsyncToken = service.listarEstadosCpp();
			token.addResponder(responder);
		}
        
        public function listarCuentasXPagar():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasXpagar");
			
			var a:int;
			var b:int;
			var c:int;
			var d:int;
			
			a = CuentasPorPagarMl.getInstance().idRecHumanoToListar;
			b = CuentasPorPagarMl.getInstance().idPersonaToListar;
			c = CuentasPorPagarMl.getInstance().idEstadoToListar;
			d = CuentasPorPagarMl.getInstance().idTipoCuentaToListar;
			
			var token:AsyncToken = service.listar(
			CuentasPorPagarMl.getInstance().idRecHumanoToListar,
			CuentasPorPagarMl.getInstance().idPersonaToListar,
			CuentasPorPagarMl.getInstance().idEstadoToListar,
			CuentasPorPagarMl.getInstance().idTipoCuentaToListar);
			token.addResponder(responder);
		}
		
		public function  modificarEstadoCuentaXpagar():void {

		   //(int idCuentaPorPagar, short idEstadoCuenta)
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasXpagar");
		   var token:AsyncToken = service.modificarEstadoCuenta(CuentasPorPagarMl.getInstance().idCuentaPpagarToModificarEstado,CuentasPorPagarMl.getInstance().idEstadoCuentaPpagarToModificarEstado);
		   token.addResponder(responder);
		
		}
        
        public function listarGeneradorCXpagar():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasXpagar");
			var token:AsyncToken = service.listarGeneneradorCpp();
			token.addResponder(responder);
		}
        
        
        public function eliminarCuentaXpagar():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasXpagar");
			var token:AsyncToken = service.eliminar(CuentasPorPagarMl.getInstance().idCuentaPpagarToEliminar);
			token.addResponder(responder);
		} 
       
       public function ModificarCuentaXPagar(cuenta:CuentaPorPagarVO):void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasXpagar");
			var token:AsyncToken = service.modificar(
			
			 cuenta.id,
			 cuenta.fechaOrigen,
			 cuenta.idRecursoHumano,
			 cuenta.idPersona,
			 cuenta.concepto,
			 cuenta.idCuentaBancaria,
			 cuenta.idBanco,
			 cuenta.idTipoCuentaBanco,
			 cuenta.numeroCuenta,
			 cuenta.valor,
			 cuenta.idEstadoCuentaPPagar,
			 cuenta.idGeneradorCuentaPPagar,
			 cuenta.idCampo,
			 cuenta.fechaPago
			
			);
			token.addResponder(responder);
		}
       
        public function agregarCuentaXPagar(cuenta:CuentaPorPagarVO):void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasXpagar");
			var token:AsyncToken = service.crear(
			
			 cuenta.fechaOrigen,
			 cuenta.idRecursoHumano,
			 cuenta.idPersona,
			 cuenta.concepto,
			 cuenta.idCuentaBancaria,
			 cuenta.idBanco,
			 cuenta.idTipoCuentaBanco,
			 cuenta.numeroCuenta,
			 cuenta.valor,
			 cuenta.idEstadoCuentaPPagar,
			 cuenta.idGeneradorCuentaPPagar,
			 cuenta.idCampo,
			 cuenta.fechaPago
			
			);
			token.addResponder(responder);
		}
        
	}
}









