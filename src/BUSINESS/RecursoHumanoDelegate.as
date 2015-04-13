package BUSINESS
{
	import MODEL.RecursoHumanoMl;
	
	import VO.CuentaBancariaVO;
	import VO.RecursoHumanoVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class RecursoHumanoDelegate
	{
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function RecursoHumanoDelegate(responder:IResponder)
		{
			
			this.responder=responder;
			
		}
		
		public function eliminarCuentaBancaria():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.eliminarCuentaBanco(RecursoHumanoMl.getInstance().idCuentaToeliminar);
			token.addResponder(responder);
		}
		
		public function agregarCuentaBancaria(cuenta:CuentaBancariaVO):void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.crearCuentaBancaria(
			RecursoHumanoMl.getInstance().RecursoHumanoPpl.dgrecursohumano.selectedItem.id,
			cuenta.idBanco,cuenta.idtipoCuenta,cuenta.numeroCuenta);
			token.addResponder(responder);
		}
		
		public function modificarCuentaBancaria(cuenta:CuentaBancariaVO):void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.actualizarCuentaBancaria(cuenta.id,cuenta.idBanco,cuenta.idtipoCuenta,cuenta.numeroCuenta);
			
			token.addResponder(responder);
		}
		
		public function listarCuentaBancaria():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.getCuentasBancariasRh(RecursoHumanoMl.getInstance().idRechumano);
			token.addResponder(responder);
		}
		
		
		public function listarPaises():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.listarPaises(RecursoHumanoMl.getInstance().nomContinenteToListarPaises);
			token.addResponder(responder);
		}
		
		public function listarCiudades():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.ciudades(RecursoHumanoMl.getInstance().codePaisToListarCitys);
			token.addResponder(responder);
		}
		
		public function listarArp():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.listarArp();
			token.addResponder(responder);
		}
		
		public function listarEps():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.listarEps();
			token.addResponder(responder);
		}
		
		public function listaraAfp():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.listarAfp();
			token.addResponder(responder);
		}
		
		public function listarbancos():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.listarBancos();
			token.addResponder(responder);
		}
		
		public function listartipocuentaBancaria():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.listarTipoCuentaBancaria();
			token.addResponder(responder);
		}
		
		public function listarRecursoHumano():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.listar();
			token.addResponder(responder);
		}
		
		public function agregarRecursoHumano(recurso:RecursoHumanoVO):void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.crear(recurso.nombre,recurso.apellido,recurso.cedula,recurso.email,recurso.telefono,recurso.direccionDomicilio,recurso.celular
			,recurso.fechaNacimiento,recurso.rut,recurso.presentoRut,recurso.presentoCedula,recurso.presentoHv,recurso.presentoEntrevista,
			recurso.idLugarNacimiento,recurso.idLugarExpedicion,recurso.idArp,recurso.idEps,recurso.idAfp);
			token.addResponder(responder);
			
		}
		
		public function modificarRecursoHumano(recurso:RecursoHumanoVO):void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionrecursoHumano");
			var token:AsyncToken = service.actualizar(recurso.id,recurso.nombre,recurso.apellido,recurso.cedula,recurso.email,recurso.telefono,recurso.direccionDomicilio,recurso.celular
			,recurso.fechaNacimiento,recurso.rut,recurso.presentoRut,recurso.presentoCedula,recurso.presentoHv,recurso.presentoEntrevista,
			recurso.idLugarNacimiento,recurso.idLugarExpedicion,recurso.idArp,recurso.idEps,recurso.idAfp);
			token.addResponder(responder);
			
		}

	}
}













