package BUSINESS
{
	import MODEL.ContratoMl;
	import MODEL.SolicitudesServiciosMl;
	
	import VO.FichaVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class SolicitudesServiciosDelegate
	{  
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function SolicitudesServiciosDelegate(responder:IResponder)
		{
			this.responder=responder;
		}
		
		public function eliminarFichas():void{
		
		  this.service = ServiceLocator.getInstance().getRemoteObject("gestionSolicitudesServicios");
		  var token:AsyncToken = service.eliminar(SolicitudesServiciosMl.getInstance().idFichaPermisoToEliminar);
		  token.addResponder(responder);
		
		}
		
         public function modificarficha(ficha:FichaVO):void{
         	
          	this.service = ServiceLocator.getInstance().getRemoteObject("gestionSolicitudesServicios");
		    var token:AsyncToken = service.modificar(ficha.id,ficha.idtipoficha,ficha.concepto,ficha.observacion,ficha.valorPrestamo
		    ,ficha.fechaPago,ficha.texto,ficha.fechaInicio,ficha.fechaFin,ficha.tipoPrestamo,ficha.llamadoAtencion,ficha.buenComportamiento);
		
		    token.addResponder(responder);
         	
         }   
		
		public function adicionarFicha(ficha:FichaVO):void{
			
			this.service = ServiceLocator.getInstance().getRemoteObject("gestionSolicitudesServicios");
		    var token:AsyncToken = service.crear(
		    ficha.idcontrato,ficha.idtipoficha,ficha.concepto,ficha.observacion,ficha.valorPrestamo,
		    ficha.fechaPago,ficha.texto,ficha.fechaInicio,ficha.fechaFin,ficha.tipoPrestamo,
		    ficha.llamadoAtencion,ficha.buenComportamiento);
		    
		    token.addResponder(responder);
		}
		
		public function listarFichas():void{
			
			this.service = ServiceLocator.getInstance().getRemoteObject("gestionSolicitudesServicios");
		    var token:AsyncToken = service.listarFichasPorContrato(ContratoMl.getInstance().ContratoPpl.dgcontrato.selectedItem.id);
			token.addResponder(responder);
		}

	}
}