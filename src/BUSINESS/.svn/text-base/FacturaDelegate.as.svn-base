package BUSINESS
{
	import MODEL.FacturasMl;
	
	import VO.AbonoFacturaVO;
	import VO.FacturaVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class FacturaDelegate
	{
		
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function FacturaDelegate(responder:IResponder)
		{
			
			this.responder=responder;
			
		}
		
		public function adicionarfactura(factura:FacturaVO):void{
		
			//int idPersona, Date fechaFactura, Date fechaPactada, int idIva, DetalleFacturaFx[] detalleFacturaFxs	
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionFacturas");
		   var token:AsyncToken = service.crear(
		   factura.idPersona,
		   factura.fechafactura,
		   factura.fechapactada, 
		   factura.idIva,
		   factura.detalleFacturas,
		   factura.numeroFactura,
		   FacturasMl.getInstance().estadoFactura);
		   token.addResponder(responder);
		
		}
		
		public function adicionarAbonofactura(abonofactura:AbonoFacturaVO):void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionFacturas");
		   var token:AsyncToken = service.crearAbono(abonofactura.idFactura,abonofactura.fechaAbono,abonofactura.valor);
		   token.addResponder(responder);
		
		}
		
		public function modificarAbonofactura(abonofactura:AbonoFacturaVO):void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionFacturas");
		   var token:AsyncToken = service.actualizarAbono(abonofactura.id,abonofactura.fechaAbono,abonofactura.valor);
		   token.addResponder(responder);
		
		}
		
		public function eliminarAbonofactura():void{
		
		  this.service = ServiceLocator.getInstance().getRemoteObject("gestionFacturas");
		  var token:AsyncToken = service.eliminarAbono(FacturasMl.getInstance().idAbonoFacturaToEliminar);
		  token.addResponder(responder);
		
		}
		
		public function modificarfactura(factura:FacturaVO):void{
			
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionFacturas");
		   var token:AsyncToken = service.actualizar(
		   factura.id,
		   factura.idPersona,
		   factura.fechafactura,
		   factura.fechapactada,
		   factura.idIva,
		   factura.detalleFacturas,
		   factura.numeroFactura,
		   FacturasMl.getInstance().estadoFactura);
		   token.addResponder(responder);
		
		}
		
		public function eliminarfactura():void{
		
		  this.service = ServiceLocator.getInstance().getRemoteObject("gestionFacturas");
		  var token:AsyncToken = service.eliminarFactura(FacturasMl.getInstance().idFacturaToEliminar);
		  token.addResponder(responder);
		
		}
		
		public function listarfactura():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionFacturas");
			var token:AsyncToken = service.listar(
			FacturasMl.getInstance().fechaInicio,
			FacturasMl.getInstance().fechaFin,
			FacturasMl.getInstance().tipoFecha,
			FacturasMl.getInstance().tipoEstado,
			FacturasMl.getInstance().Filtrarpersona);
			token.addResponder(responder);
		}
		
		public function listarAbonosfactura():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionFacturas");
			var token:AsyncToken = service.listarAbonosFactura(FacturasMl.getInstance().FacturasPpl.dgfacturas.selectedItem.id);
			token.addResponder(responder);
		}
		
		public function listarRetenciones():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionFacturas");
			var token:AsyncToken = service.listarRetenciones();
			token.addResponder(responder);
		}
		
		public function listarIvas():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("gestionFacturas");
			var token:AsyncToken = service.listarIvas();
			token.addResponder(responder);
		}

        public function generarReporteFactura():void{
			
			//(int tipoPeriodo, Calendar fechaInicio, Calendar fechaFin, short tipoFecha, short tipoEstado, int[] idsPersonas) {
			
			this.service=ServiceLocator.getInstance().getRemoteObject("reporteFacturas");
			var token:AsyncToken = service.generarReporteFactura
			(
			FacturasMl.getInstance().tipoPeriodoR,
			FacturasMl.getInstance().fechaInicioR,
			FacturasMl.getInstance().fechaFinR,
			FacturasMl.getInstance().tipoFechaR,
			FacturasMl.getInstance().tipoEstadoR,
			FacturasMl.getInstance().arrClientesR
			);
			token.addResponder(responder);
			
		}

	}
}








