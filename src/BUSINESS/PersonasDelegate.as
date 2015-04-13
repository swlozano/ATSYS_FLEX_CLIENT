package BUSINESS
{
	import MODEL.PersonaMl;
	
	import VO.PersonaVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class PersonasDelegate
	{
		private var responder	:	IResponder;
		public  var service		:	Object;
		     
		public function PersonasDelegate(responder	:	IResponder)
		{
			this.responder=responder;
		}
		public function adicionarPersonas(persona:PersonaVO):void{
			
			this.service = ServiceLocator.getInstance().getRemoteObject("gestionPersonas");
			var token:AsyncToken = service.create(persona.nit,
			persona.cedula,
			persona.telefono,
			persona.nombreRs,
			PersonaMl.getInstance().BanderaIsPersona,
			PersonaMl.getInstance().cual,
			PersonaMl.getInstance().numCual
			);
			token.addResponder(responder);  
		}
		
		public function comprobarExistenciaPersona():void
		{  
			this.service = ServiceLocator.getInstance().getRemoteObject("gestionPersonas");
			var token:AsyncToken = service.comprobarExistenciaPersona(PersonaMl.getInstance().cedulaToComprobar);
			token.addResponder(responder);
		}
		
		public function listarPersonas():void
		{  
			this.service = ServiceLocator.getInstance().getRemoteObject("gestionPersonas");
			var token:AsyncToken = service.listar();
			token.addResponder(responder);
		}
		public function modificarPersonas(persona:PersonaVO):void{
		    
		    this.service = ServiceLocator.getInstance().getRemoteObject("gestionPersonas");
		    var token:AsyncToken = service.actualizar(persona.id,
		    persona.nit,
		    persona.cedula,
		    persona.telefono,
		    persona.nombreRs,
		    PersonaMl.getInstance().cual,
		    PersonaMl.getInstance().numCual
		    );
		    token.addResponder(responder);
		}
		
		public function eliminarPersonas():void{
		
		    this.service = ServiceLocator.getInstance().getRemoteObject("gestionPersonas");
            var token:AsyncToken = service.eliminar(PersonaMl.getInstance().idPersonaToEliminar); 
            token.addResponder(responder);
		}
		

	}
}