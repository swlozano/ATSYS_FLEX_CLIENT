package BUSINESS
{
	import MODEL.CausacionesMl;
	import MODEL.ContratoMl;
	
	import VO.CausacionVO;
	import VO.ContratoVO;
	import VO.FechasPagoVO;
	import VO.TerminarContratoVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class ContratoDelegate
	{
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function ContratoDelegate(responder:IResponder)
		{
			this.responder=responder;
		}
		
		
		public function generarCausacionNomina(causacion:CausacionVO):void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("causacionNomina");
			var token:AsyncToken = service.listarCausacionNomina(causacion.mes,causacion.year);
			token.addResponder(responder);
		}
        
        public function generarCausacionPrestacionS(causacion:CausacionVO):void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("causacionPs");
			var token:AsyncToken = service.generarCausacion(causacion.mes,causacion.year/*,causacion.idtipoContrato*/);
			token.addResponder(responder);
		}
        
        public function listarfechasPago(fechasPago:FechasPagoVO):void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("fechas");
		   var token:AsyncToken = service.getFechasPago(fechasPago.fechapago,fechasPago.fechaInicio,fechasPago.fechaFin,fechasPago.periodoPago);
		   token.addResponder(responder);
		  
		}  
        
        public function adicionarContrato(contrato:ContratoVO):void{
			var borrar:Object = contrato.valorFormaPagoArray;
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
		   var token:AsyncToken = service.crear(contrato.idOficio,contrato.idTipoContrato,contrato.nacionLabores,contrato.idRecursoHumano,contrato.nacionContrato,contrato.fechaInicio,contrato.fechafin,contrato.tiempo,contrato.valorFormaPagoArray);
		   token.addResponder(responder);
		
		}
		
		//////////////////////////ADENDOSSSSSS
		
		
		   public function listarValoresFpagoXContrato():void{
			//var borrar:Object = contrato.valorFormaPagoArray;
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
		   var token:AsyncToken = service.listarValoresFormaPagoByContrato(ContratoMl.getInstance().ContratoPpl.dgcontrato.selectedItem.id);
		   token.addResponder(responder);
		
		   }
           
           public function crearAdendo():void{
			
				   this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
				   var token:AsyncToken = service.crearAdendo(
				   ContratoMl.getInstance().ContratoPpl.dgcontrato.selectedItem.id,
				   ContratoMl.getInstance().nuevaFechaInicioAdendoContrato, 
				   ContratoMl.getInstance().nuevaFechaFinAdendoContrato, 
				   ContratoMl.getInstance().ValorFormaPagoFxVO/*null*/);
				   token.addResponder(responder);
           
           }
           
           public function listarAdendos():void
           {
           	
           	this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
           	var i:int;
           	i = ContratoMl.getInstance().ContratoPpl.dgcontrato.selectedItem.id;
		    var token:AsyncToken = service.listAdendos(ContratoMl.getInstance().ContratoPpl.dgcontrato.selectedItem.id);
		    token.addResponder(responder);
           	
           }
           
		////////////////////////
		
		//////////////Opcion generar val f pago///////////////
		
		 public function generarValoresFpagoDeContrato():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
		   
		   var i:int = ContratoMl.getInstance().idContratoToGenerarVFPago;
		   var token:AsyncToken = service.generarNuevasFechasPago(ContratoMl.getInstance().idContratoToGenerarVFPago);
		   token.addResponder(responder);
		 
		 }  
		
		 public function guardarNuevasFpagoDeContrato():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
		   var token:AsyncToken = service.guardarNuevasFechasPago(ContratoMl.getInstance().ArrayValoresFormaFechaspago);
		   token.addResponder(responder);
		 
		 }
		
		 ///////////////////////opcion visualizar vfp
		 
		 public function listarValoresFpagoToVisualizar():void{
		 	
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionValorFormapago");
		   var token:AsyncToken = service.listarValoresFormaPago(ContratoMl.getInstance().idContratoToVisualizarVfp);
		   token.addResponder(responder);
		 	
		 }
		 
		 public function listarFechasPagoByVFP():void{
		 	
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionValorFormapago");
		   var token:AsyncToken = service.listarFechasPagoByValorFormaPago(ContratoMl.getInstance().idVfpToListarFechasPago);
		   token.addResponder(responder);
		 	
		 }
		 
		///////////////////////////////////////////////////////
		
		
		public function terminarContrato(terminar:TerminarContratoVO):void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
		   var token:AsyncToken = service.terminarContrato(
		   terminar.idContrato,terminar.solicitante,terminar.motivo,terminar.cartaRenuncia,
		   terminar.cartaAceptacion,terminar.cartaTerminacion,terminar.fechaPropuestaRetiro,terminar.fechaRetiro,terminar.respuesta);
		   token.addResponder(responder);
		
		}
		 
		
		public function modificarterminarContrato(terminar:TerminarContratoVO):void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
		   var token:AsyncToken = service.modificarTerminarContrato(terminar.id,terminar.solicitante,terminar.motivo,terminar.cartaRenuncia,
		   terminar.cartaAceptacion,terminar.cartaTerminacion,terminar.fechaPropuestaRetiro,terminar.fechaRetiro,terminar.respuesta);
		   token.addResponder(responder);  
		
		}
		
		public function listarContrato():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
		   var token:AsyncToken = service.listarContratos(ContratoMl.getInstance().banEstadoContrato);
		   token.addResponder(responder);
		 
		}
		
		public function listarTipoContrato():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
		   var token:AsyncToken = service.listarTipoContrato();
		   token.addResponder(responder);
		
		}
		
		public function listarTerminacionesContratoPorRespuesta():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
		   var token:AsyncToken = service.listarTerminacionPorRespuesta(ContratoMl.getInstance().ContratoPpl.dgcontrato.selectedItem.id,ContratoMl.getInstance().tipoListarTerminacionesContrato);
		   token.addResponder(responder);
		
		}
		
		public function listarTipopago():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionValorFormapago");
		   var token:AsyncToken = service.listarTipoPago();
		   token.addResponder(responder);
		
		}
		
		public function listarRetencionespago():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionValorFormapago");
		   var token:AsyncToken = service.listarRetencionesPagos();
		   token.addResponder(responder);
		
		}

                
        public function consultarExistenciaCausacion(causacion:CausacionVO):void{
        	
           this.service=ServiceLocator.getInstance().getRemoteObject("causacionDao");
		   var i:int= causacion.mes;
		   i = causacion.year;
		   
		   var token:AsyncToken = service.consultarExistenciaCausacion(causacion.mes, causacion.year, causacion.idtipoContrato); 
		   token.addResponder(responder);
        	
        }
        
        public function listarCausacionNominaXfechasCorte():void{
        	
           this.service=ServiceLocator.getInstance().getRemoteObject("causacionNomina");
           var ar:Array = new Array();
           ar = CausacionesMl.getInstance().idsFechasCorte;
		   var token:AsyncToken = service.listarCausacionNominaByFechasCorte(CausacionesMl.getInstance().idsFechasCorte); 
		   
		   token.addResponder(responder);
        	
        }
 		
 		public function listarfechasCausadas():void{
        	
           this.service=ServiceLocator.getInstance().getRemoteObject("causacionDao");
          
		   var token:AsyncToken = service.listarFechasCausadas(CausacionesMl.getInstance().tipoCausacion); 
		   
		   token.addResponder(responder);
        	
        }
 		
 		public function listarCausacionPsXfechasCorte():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("causacionPs");
			var token:AsyncToken = service.listarCausacionPsByFechasCorte(CausacionesMl.getInstance().idsFechasCorte);
			token.addResponder(responder);
		}
 		
 		public function listarBonificaciones():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("causacionDao");
		   var token:AsyncToken = service.listarBonificaciones();
		   token.addResponder(responder);
		
		}
		
		public function listarDeducciones():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("causacionDao");
		   var token:AsyncToken = service.listarDeducciones();
		   token.addResponder(responder);
		}
		public function listarProvisiones():void
		{
			this.service=ServiceLocator.getInstance().getRemoteObject("causacionDao");
		   var token:AsyncToken = service.listarProvisiones();
		   token.addResponder(responder);
		}
		
		public function crearCausasacionNomina():void
		{
			this.service=ServiceLocator.getInstance().getRemoteObject("causacionNomina");
		    var token:AsyncToken = service.crear(CausacionesMl.getInstance().causacionNominaAsArray(ContratoMl.getInstance().listCausacionNomina),new Date(),CausacionesMl.getInstance().mesCausacion,CausacionesMl.getInstance().yearCausacion);
		    token.addResponder(responder);
		}
		
		public function calcularCausacionNomina():void
		{
			this.service=ServiceLocator.getInstance().getRemoteObject("causacionNomina");
		   	var token:AsyncToken = service.calcularCausacionNomina(CausacionesMl.getInstance().causacionNominaAsArray(ContratoMl.getInstance().listCausacionNomina),CausacionesMl.getInstance().yearCausacion);
		   	token.addResponder(responder);
		}
	  	
	  	public function calcularCausacionPs():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("causacionPs");
			var token:AsyncToken = service.calcularCausacionPS(CausacionesMl.getInstance().causacionPsAsArray(ContratoMl.getInstance().listCausacionps));
			token.addResponder(responder);
		}
	  	
		public function listarHitorialTerminacionesContrato():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionContratos");
		   var token:AsyncToken = service.listarHitorialTerminacionesContrato(ContratoMl.getInstance().ContratoPpl.dgcontrato.selectedItem.id);
		   token.addResponder(responder);
		
		}
		
		public function crearCausacionPs():void{
			
			this.service=ServiceLocator.getInstance().getRemoteObject("causacionPs");
			var token:AsyncToken = service.crear(
			CausacionesMl.getInstance().causacionPsAsArray(ContratoMl.getInstance().listCausacionps),
			new Date(),
			CausacionesMl.getInstance().mesCausacion,CausacionesMl.getInstance().yearCausacion);
			token.addResponder(responder);
		}
	}
}
