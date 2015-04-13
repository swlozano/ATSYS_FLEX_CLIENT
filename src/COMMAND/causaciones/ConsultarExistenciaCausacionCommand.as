package COMMAND.causaciones
{
	import BUSINESS.ContratoDelegate;
	
	import EVENT.ContratoEvent;
	
	import MODEL.CausacionesMl;
	import MODEL.ContratoMl;
	
	import VO.CausacionVO;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	import mx.rpc.IResponder;
   
	public class ConsultarExistenciaCausacionCommand implements ICommand, IResponder
	{
       
        [Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;		
        
        [Bindable]public var resultado:Object;
        
		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).consultarExistenciaCausacion((event as ContratoEvent).causacionvo);
		}
		
		public function result(data:Object):void
		{
			resultado = data.result;
			
			if(data.result.idRespuesta==27){
				
				Alert.yesLabel="VISUALIZAR";
	            
	            Alert.buttonWidth=165;
	            Alert.noLabel="CONTINUAR GENERANDO";
	           
	            Alert.show("Los datos ya existen...Que desea hacer?","Mensaje de Alerta",Alert.YES|Alert.NO,null,closehandlerCausacion,alerta,0);
				
			}else if(data.result.idRespuesta==28){
				
				      var causacion:CausacionVO;
				      var e:ContratoEvent;
				      
				      ///esto es para nomina
				      var borrar:int =CausacionesMl.getInstance().tipoContrato; 
				      if(CausacionesMl.getInstance().tipoContrato==2){
				          
				          
				          ContratoMl.getInstance().CausacionPpl.enableOpciones=false;
				          
				          
					      causacion = new CausacionVO(0,1,CausacionesMl.
					      getInstance().mesCausacion,
					      CausacionesMl.getInstance().yearCausacion);
		                  e = new ContratoEvent(ContratoEvent.GENERAR_CAUSACIONES_NOMINA,null,null,causacion);
		                  CairngormEventDispatcher.getInstance().dispatchEvent(e);
	                   
	                   }else{
	                   	     //aqui iria lo de generar causaciones x prestacion de servicios}
	                   	     ContratoMl.getInstance().CausacionPpl.enableOpciones=false;
	                   	     
	                   	     
	                            causacion = new CausacionVO(0,0,CausacionesMl.
					      		getInstance().mesCausacion,
					      		CausacionesMl.getInstance().yearCausacion);
		                  		e = new ContratoEvent(ContratoEvent.GENERAR_CAUSACIONES_PS,null,null,causacion);
		                  		CairngormEventDispatcher.getInstance().dispatchEvent(e);
	                          
	                        }
				      
			        }
		}
		
		private function closehandlerCausacion(event:CloseEvent):void{
             
               switch(event.detail){
               
                 case Alert.YES:
                     
                    //////SI OPTA POR LA VISUALIZACION NOMINA
                    
                    if(CausacionesMl.getInstance().tipoContrato==2){
                    
		                    CausacionesMl.getInstance().idsFechasCorte = resultado.idsFechasCorteCausacion;
		                    
		                    var e:ContratoEvent = new ContratoEvent(ContratoEvent.LISTAR_CAUSACIONOMINA_POR_FECHACORTE,null,null,null);
		                    CairngormEventDispatcher.getInstance().dispatchEvent(e);
		                    
		                    ContratoMl.getInstance().CausacionPpl.enableOpciones=false;
                    }else{
                    	
                    	    
                    	    //OPTA POR LA VISUALIZACION PS
                    	    CausacionesMl.getInstance().idsFechasCorte = resultado.idsFechasCorteCausacion;
                    	    
                    	    var ar:Array = CausacionesMl.getInstance().idsFechasCorte;
                    	    
                    	    var evz:ContratoEvent =  new ContratoEvent(ContratoEvent.LISTAR_CAUSACIONPS_POR_FECHACORTE,null,null,null);
                    	    CairngormEventDispatcher.getInstance().dispatchEvent(evz);
                    	    
                    	    ContratoMl.getInstance().CausacionPpl.enableOpciones=false;
                    	
                         }
                    
                 break;  
                 
                 case Alert.NO:
                 
                   ///SI OPTA POR LA CONTINUACION DE LA GENERACION
                   
                   var causacion:CausacionVO;
				   var ev:ContratoEvent;
                   
                   if(CausacionesMl.getInstance().tipoContrato==2){
				      
					      causacion = new CausacionVO(0,1,CausacionesMl.
					      getInstance().mesCausacion,
					      CausacionesMl.getInstance().yearCausacion);
		                  ev = new ContratoEvent(ContratoEvent.GENERAR_CAUSACIONES_NOMINA,null,null,causacion);
		                  CairngormEventDispatcher.getInstance().dispatchEvent(ev);
	                   
	                   }else{
	                   	     //aqui iria lo de generar causaciones x prestacion de servicios
	                           causacion = new CausacionVO(0,0,CausacionesMl.
					      	   getInstance().mesCausacion,
					      	   CausacionesMl.getInstance().yearCausacion);
		                  	   ev = new ContratoEvent(ContratoEvent.GENERAR_CAUSACIONES_PS,null,null,causacion);
		                  	   CairngormEventDispatcher.getInstance().dispatchEvent(ev);
	                        
	                        }
                   
                  /* CajaMenorMl.getInstance().Clon_pantallaagregarCajaMenor.cbxResponsable.selectedIndex=-1;*/
                 
                 break;
                   
               
               }
             

             }
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}





















