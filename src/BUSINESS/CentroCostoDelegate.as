package BUSINESS
{
	import MODEL.CentroCostoMl;
	
	import VO.CentroCostroVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class CentroCostoDelegate
	{
		
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function CentroCostoDelegate(responder:IResponder)
		{
			this.responder=responder;
		}
		
		public function adicionarCentroCosto(centroCosto:CentroCostroVO):void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionCentroCosto");
		   var token:AsyncToken = service.create(centroCosto.nombre,centroCosto.ciudad);
		   token.addResponder(responder);
		
		}
		
		public function modificarCentroCosto(centrocosto:CentroCostroVO):void{
			
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionCentroCosto");
		   var token:AsyncToken = service.actualizar(centrocosto.id,centrocosto.nombre,centrocosto.ciudad);
		   token.addResponder(responder);	
		
		}
		
		public function eliminarCentroCosto():void{
		
		  this.service = ServiceLocator.getInstance().getRemoteObject("gestionCentroCosto");
		  var token:AsyncToken = service.eliminar(CentroCostoMl.getInstance().idCentroCostoToEliminar);
		  token.addResponder(responder);
		
		}
		
		public function listarCentroCosto():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionCentroCosto");
			var token:AsyncToken = service.listar();
			token.addResponder(responder);
		}
		
	}
}