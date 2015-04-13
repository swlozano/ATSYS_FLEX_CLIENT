package BUSINESS
{
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class PermisosDelegate
	{
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function PermisosDelegate(responder:IResponder)
		{
			this.responder=responder;
		}
		
		public function listarPermisos():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("rolDao");
		   var token:AsyncToken = service.listarPermisos();
		   token.addResponder(responder);
		
		}
		

	}
}