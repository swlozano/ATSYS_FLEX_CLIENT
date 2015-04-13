package BUSINESS
{
	
	import MODEL.UsuariosSysMl;
	
	import VO.UsuariosSysVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	
	
	
	
	public class UsuarioSysDelegate 
	{
		
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function UsuarioSysDelegate(responder	:	IResponder)
		{
			this.responder = responder;
		}
		
		public function adicionarUsuario(usuario : UsuariosSysVO):void
		{
			this.service = ServiceLocator.getInstance().getRemoteObject("gestionUsuarios");
			
			var token:AsyncToken = service.create(usuario.nombre,usuario.apellido,usuario.cedula,usuario.login,usuario.contrasena,usuario.correoElectronico,usuario.idRolesSelect);
			token.addResponder(responder);
		}
		
		public function listarrUsuarios():void
		{
			this.service = ServiceLocator.getInstance().getRemoteObject("gestionUsuarios");
			var token:AsyncToken = service.listar();
			token.addResponder(responder);
		}
		
		public function eliminarUsuario():void
		{
			this.service = ServiceLocator.getInstance().getRemoteObject("gestionUsuarios");
			var token:AsyncToken = service.eliminar(UsuariosSysMl.getInstance().idUsuarioToEliminar);
			token.addResponder(responder);
		}
		
		public function modificarUsuario(usuario : UsuariosSysVO):void
		{
			this.service = ServiceLocator.getInstance().getRemoteObject("gestionUsuarios");
			var token:AsyncToken = service.actualizar(usuario.id,usuario.nombre,usuario.apellido,usuario.cedula,usuario.login,usuario.contrasena,usuario.correoElectronico,usuario.idRolesSelect);
			
			token.addResponder(responder);
		}
	    
	    public function validarUsuario(usuario:UsuariosSysVO):void{
	    
	       this.service = ServiceLocator.getInstance().getRemoteObject("gestionUsuarios");
	       var token:AsyncToken = service.ingresoSistema(usuario.login,usuario.contrasena);
	       token.addResponder(responder);
	    }	

	}
}






