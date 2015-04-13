package COMMAND.Contratos
{
	import BUSINESS.ContratoDelegate;
	
	import MODEL.ContratoMl;
	import MODEL.PantallasMl;
	import MODEL.PermisosMl;
	
	import VIEW.contratacion.terminarContrato;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarTerminacionesContratoPorRespuestaCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		[Embed(source="/REC/IMAGENES/alertopt.png")]
			public var alertidea:Class;

		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).listarTerminacionesContratoPorRespuesta();
		}
		
		public function result(data:Object):void
		{
		  ContratoMl.getInstance().listTerminacionesContratoXrespuesta = data.result;
			
		  if(ContratoMl.getInstance().selectableContrato){
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_TERMINAR_CONTRATOS:
				
				if(ContratoMl.getInstance().listTerminacionesContratoXrespuesta==null){
				          
				          ContratoMl.getInstance().bantipoListar=true;
				          ContratoMl.getInstance().tituloPantallaTerminarContrato = "TERMINACIÓN DE CONTRATO";
						  var terminarcontrato:terminarContrato=terminarContrato(PopUpManager.createPopUp(PantallasMl.atsys,terminarContrato,true));
		 	      	      PopUpManager.centerPopUp(terminarcontrato);
		 	      	      ContratoMl.getInstance().selectableContrato=false;
		                  PermisosMl.getInstance().deshabilitarMenus();
		                  PantallasMl.ESTADO_PANTALLA=-1;
		                  ContratoMl.getInstance().TerminarContratoPpal.listarHistorial();
                  
                 }else{
                 	    
                 	    
                 	    if(ContratoMl.getInstance().TerminarContratoIndice==1){
                 	    	
                 	      ContratoMl.getInstance().bantipoListar=true;
				          ContratoMl.getInstance().tituloPantallaTerminarContrato = "TERMINACIÓN DE CONTRATO";
						  var terminarcontratos:terminarContrato=terminarContrato(PopUpManager.createPopUp(PantallasMl.atsys,terminarContrato,true));
		 	      	      PopUpManager.centerPopUp(terminarcontratos);
		 	      	      ContratoMl.getInstance().selectableContrato=false;
		                  PermisosMl.getInstance().deshabilitarMenus();
		                  PantallasMl.ESTADO_PANTALLA=-1;
		                  ContratoMl.getInstance().TerminarContratoPpal.listarHistorial();
                 	    	
                 	    }else{
		                 	    
		                 	    ContratoMl.getInstance().bantipoListar=false;
		                 	    Alert.yesLabel="SI";
		                        Alert.noLabel="NO";
		                        Alert.show("!!EL CONTRATO YA HA SIDO TERMINADO¡¡" + "\n\n" + "Deseas Modificar el estado del Contrato?","Mensaje de Alerta",Alert.YES|Alert.NO,null,closeHandlerPantallaterminado,alertidea,0);
		                        
		                        var ArraySolicitante:Array = [{solicitante:'Empleado', num:0},{solicitante:'Empresa',num:1},{solicitante:'Terminación Natural',num:2}];
		                        
		                        var terminacion:Object = ContratoMl.getInstance().listTerminacionesContratoXrespuesta;
		                        
				
							    var cont:int = 0;
							    var ban:Boolean=false;
									
								  for each(var x:* in ArraySolicitante){
								  
								     if(terminacion.solicitante!=x.num && ban==false){
								     
								       cont++;
								     
								     }else{
								     
								       ban=true;
								      
								     }
								  
								  }
									  
							      ContratoMl.getInstance().cbxSolicitanteSelectedIndex=cont;
					
                         }
                      } 
				
				break;
				
			}
			
		  }
			
		}
		
		private function closeHandlerPantallaterminado(event:CloseEvent):void{
             
               switch(event.detail){
               
                 case Alert.YES:
                   
                   ContratoMl.getInstance().tituloPantallaTerminarContrato = "MODIFICAR TERMINACIÓN DE CONTRATO";
                   var terminarcontrato:terminarContrato=terminarContrato(PopUpManager.createPopUp(PantallasMl.atsys,terminarContrato,true));
 	      	      PopUpManager.centerPopUp(terminarcontrato);
 	      	      ContratoMl.getInstance().selectableContrato=false;
                  PermisosMl.getInstance().deshabilitarMenus();
                  PantallasMl.ESTADO_PANTALLA=-1;
                   
                   
                 break;
               
               }
             
        }
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}