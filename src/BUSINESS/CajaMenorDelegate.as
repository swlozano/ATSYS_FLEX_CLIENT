package BUSINESS
{
	import MODEL.CajaMenorMl;
	import MODEL.UsuariosSysMl;
	
	import VO.CajaMenorVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class CajaMenorDelegate
	{
		
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function CajaMenorDelegate(responder:IResponder)
		{
			
			this.responder=responder;
			
		}
		
		public function adicionarCajaMenor(cajamenor:CajaMenorVO):void{
		
		    this.service = ServiceLocator.getInstance().getRemoteObject("CajaMenor");
		    var token:AsyncToken = service.create(cajamenor.nombre,cajamenor.monto_inicio,cajamenor.valorMinimoNotificacion,cajamenor.montoMinimoReintegro,cajamenor.id_responsable,cajamenor.idUsuariosToNotificar,cajamenor.idCentrocosto,cajamenor.idPersona,cajamenor.esCuenta);
		    token.addResponder(responder);
		}
		
		public function listarCajaMenor(cajamenor:CajaMenorVO):void{
		
		   this.service = ServiceLocator.getInstance().getRemoteObject("CajaMenor");
		   var token:AsyncToken = service.listar(UsuariosSysMl.getInstance().usuarioIngresado.id,cajamenor.esCuenta);
		   token.addResponder(responder);
		
		}
		
		public function listarTodaslasCajas(cajamenor:CajaMenorVO):void{
		
		   this.service = ServiceLocator.getInstance().getRemoteObject("CajaMenor");
		   var token:AsyncToken = service.listarTodasCajas(cajamenor.esCuenta);
		   token.addResponder(responder);
		
		}
		
		public function listarCajaUsuarioEspecifico():void{
		
		   this.service = ServiceLocator.getInstance().getRemoteObject("CajaMenor");
		   var token:AsyncToken = service.cajasUsuarioEspecifico(UsuariosSysMl.getInstance().usuarioIngresado.id,0);
		   token.addResponder(responder);
		
		}
		
		public function configurarCajaMenor(cajamenor:CajaMenorVO):void{
		
		   this.service = ServiceLocator.getInstance().getRemoteObject("CajaMenor");
		   var token:AsyncToken = service.actualizar(cajamenor.id,cajamenor.nombre,cajamenor.monto_inicio,cajamenor.valorMinimoNotificacion,cajamenor.montoMinimoReintegro,cajamenor.id_responsable,cajamenor.idUsuariosToNotificar);
		   token.addResponder(responder);
		}
		public function eliminarCajamenor():void{
		
		   this.service = ServiceLocator.getInstance().getRemoteObject("CajaMenor");
		   var token:AsyncToken= service.eliminar(CajaMenorMl.getInstance().idCajaMenorToEliminar);
		   token.addResponder(responder);
		
		}
		

	}
}