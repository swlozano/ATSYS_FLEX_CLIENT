package BUSINESS
{
	import MODEL.RolSysMl;
	
	import VO.RolSysVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class RolSysDelegate
	{
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function RolSysDelegate(responder:IResponder)
		{
			this.responder=responder;
		}

        public function adicionarRol(rol : RolSysVO):void
		{
			this.service = ServiceLocator.getInstance().getRemoteObject("rolDao");
			var token:AsyncToken = service.create(rol.nombre,rol.idPermisosSelect);
			token.addResponder(responder);
		}
		public function modificarRol(rol : RolSysVO):void
		{
			this.service = ServiceLocator.getInstance().getRemoteObject("rolDao");
			var token:AsyncToken = service.actualizar(rol.id,rol.nombre,rol.idPermisosSelect);
			token.addResponder(responder);
		}

        public function eliminarRol():void{
        	
        	this.service = ServiceLocator.getInstance().getRemoteObject("rolDao");
        	var token:AsyncToken = service.eliminar(RolSysMl.getInstance().idRolToEliminar);
        	token.addResponder(responder);
        
        }
    
        public function listarRoles():void
		{
			this.service = ServiceLocator.getInstance().getRemoteObject("rolDao");
			var token:AsyncToken = service.listar();
			token.addResponder(responder);
		}
   
	}
}
