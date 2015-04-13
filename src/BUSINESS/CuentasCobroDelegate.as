package BUSINESS
{
	import MODEL.CuentasCobroMl;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class CuentasCobroDelegate
	{
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function CuentasCobroDelegate(responder:IResponder)
		{
			this.responder=responder;
		}
		
		public function filtrarPorContratos():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasCobro");
			var token:AsyncToken = service.filrarCcPorContrato(CuentasCobroMl.getInstance().idContratoToFiltrar, CuentasCobroMl.getInstance().idtipoEstado);
			token.addResponder(responder);
		}
		
		public function filtrarPorFechas():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasCobro");
			var token:AsyncToken = service.filrarCcPorFechas(CuentasCobroMl.getInstance().fechaIn,
			CuentasCobroMl.getInstance().fechaFin,CuentasCobroMl.getInstance().idtipoEstado); 
			token.addResponder(responder);
		}
		
		public function filtrarPorRecHumano():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasCobro");
			var token:AsyncToken = service.filtrarCuentasCobroPorRh(CuentasCobroMl.getInstance().idRhToFiltrar, CuentasCobroMl.getInstance().idtipoEstado);
			token.addResponder(responder);
		}
		
		public function listarTodos():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasCobro");
			var token:AsyncToken = service.listarCuentasCobro(CuentasCobroMl.getInstance().idtipoEstado);
			token.addResponder(responder);
		}
		
		public function cambiarEstado():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCuentasCobro");
			var token:AsyncToken = service.cambiarEstadoCuentaCobro(CuentasCobroMl.getInstance().CuentasCobroPpl.dgcuentasCobro.selectedItem.id,CuentasCobroMl.getInstance().idtipoEstado);
			token.addResponder(responder);
		}

	}
}
















