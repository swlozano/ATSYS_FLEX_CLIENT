package BUSINESS
{
	import MODEL.OficioMl;
	
	import VO.OficioVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class OficioDelegate
	{
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function OficioDelegate(responder:IResponder)
		{
			this.responder=responder;
		}
		
		public function adicionarOficio(oficio:OficioVO):void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionOficios");
		   var token:AsyncToken = service.crear(oficio.nombre,oficio.objeto);
		   token.addResponder(responder);
		
		}
		
		public function eliminarOficio():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionOficios");
		   var token:AsyncToken = service.eliminar(OficioMl.getInstance().idOficioToEliminar);
		   token.addResponder(responder);
		
		}
		
		public function listarOficio():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionOficios");
		   var token:AsyncToken = service.listar();
		   token.addResponder(responder);
		
		}
		
		public function modificarOficio(oficio:OficioVO):void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionOficios");
		   var token:AsyncToken = service.actualizar(oficio.id,oficio.nombre,oficio.objeto);
		   token.addResponder(responder);
		
		}

	}
}