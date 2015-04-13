package COMMAND.RecursoHumano
{
	import BUSINESS.RecursoHumanoDelegate;
	
	import EVENT.CuentasPorPagarEvent;
	import EVENT.PersonaEvent;
	
	import MODEL.ContratoMl;
	import MODEL.CuentasPorPagarMl;
	import MODEL.PantallasMl;
	import MODEL.PermisosMl;
	import MODEL.RecursoHumanoMl;
	
	import VIEW.CuentasCobro.FiltroxRecursoHumano;
	import VIEW.contratacion.agregarContrato;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarRecursoHumanoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new RecursoHumanoDelegate(this).listarRecursoHumano();
		}
		
		public function result(data:Object):void
		{
			RecursoHumanoMl.getInstance().listRecursoHumano = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CONTRATO:
				
				   if(RecursoHumanoMl.getInstance().listRecursoHumano!=null){
				   	      
				   	    if(RecursoHumanoMl.getInstance().listRecursoHumano.length>0)
				   	      {
					   	    PermisosMl.getInstance().deshabilitarMenus();
					   	    
					   	    var addcontrato:agregarContrato=agregarContrato(PopUpManager.createPopUp(PantallasMl.atsys,agregarContrato,false));
	            	 	    PopUpManager.centerPopUp(addcontrato);
					    	PantallasMl.ESTADO_PANTALLA=-1;
				   	      
				   	      }else{
				   	      	
				   	      	      Alert.show("Para poder agregar un CONTRATO necesitas RECURSOS HUMANOS","Mensaje de alerta",0,null,null,alerta,0);
					              PantallasMl.ESTADO_PANTALLA=-1;
				   	      	
				   	           }
				   	      
				   	   				   	
				   }else{
				   	
					   	    Alert.show("Para poder agregar un CONTRATO necesitas RECURSOS HUMANOS","Mensaje de alerta",0,null,null,alerta,0);
					        PantallasMl.ESTADO_PANTALLA=-1;
				        
				        }
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_FILTRO_RECURSO_HUMANO_CUENTA_COBRO:
				
				    if(RecursoHumanoMl.getInstance().listRecursoHumano!=null){
				   	
				   	    if(RecursoHumanoMl.getInstance().listRecursoHumano.length>0){
				   	
					   	    var frecursoHumano:FiltroxRecursoHumano=FiltroxRecursoHumano(PopUpManager.createPopUp(PantallasMl.atsys,FiltroxRecursoHumano,false));
	            	 	    PopUpManager.centerPopUp(frecursoHumano);
					    	PantallasMl.ESTADO_PANTALLA=-1;
				   	       
				   	       }else{
				   	
						   	    Alert.show("No hay RECURSOS HUMANOS por los cuales filtrar. Agregue uno para utilizar este modo de Filtro","Mensaje de alerta",0,null,null,alerta,0);
						        PantallasMl.ESTADO_PANTALLA=-1;
						        
						        }				   	
				   	   				   	
				   	   				   	
				   }else{
				   	
				   	    Alert.show("No hay RECURSOS HUMANOS por los cuales filtrar. Agregue uno para utilizar este modo de Filtro","Mensaje de alerta",0,null,null,alerta,0);
				        PantallasMl.ESTADO_PANTALLA=-1;
				        }
				   
				break;
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR:
				
				   // if(RecursoHumanoMl.getInstance().listRecursoHumano!=null){
				    	
				    	var evx:PersonaEvent = new PersonaEvent(PersonaEvent.LISTAR_PERSONAS,null);
				    	CairngormEventDispatcher.getInstance().dispatchEvent(evx);
				    	
				    //}
				 
				break;
				
				//////////////////////////CUENTA POR PAGAR CAUSACION NOMINA///////////
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR_CAUSACION_NOMINA:
				
				     
				     var rhselec:int =  ContratoMl.getInstance().CausacionPpl.dgCausaciones.selectedItem.idRecursoHumano;
				    
				     fijarRecursoHumanoCausacionNominaCpp(rhselec);
				     
				     var evc:CuentasPorPagarEvent = new CuentasPorPagarEvent(CuentasPorPagarEvent.LISTAR_ESTADO_CUENTA_X_PAGAR,null);
				     CairngormEventDispatcher.getInstance().dispatchEvent(evc); 				
				
				
				break;
				
				///////////////////////////////////////////////////////////////////////
				
				case PantallasMl.getInstance().PANTALLA_CUENTAS_POR_PAGAR_PPL:
				  
					   //if(RecursoHumanoMl.getInstance().listRecursoHumano!=null){
					   	
					   	  var evp:PersonaEvent = new PersonaEvent(PersonaEvent.LISTAR_PERSONAS,null);
					   	  CairngormEventDispatcher.getInstance().dispatchEvent(evp); 
					   	
					   //}
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_CUENTAS_X_PAGAR:
				
				     if(CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem.idCuentaBanco>0){
				     	
				     	//CuentasPorPagarMl.getInstance().banderaPersona = false;
				        //CuentasPorPagarMl.getInstance().banderaRecHumano = true;
				     	
				     	var recseleccionado:Object =  CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem;
				     	
				     	fijarRecursoHumano(recseleccionado);
				     	
				     	
				     }  
				
					   var evm:PersonaEvent = new PersonaEvent(PersonaEvent.LISTAR_PERSONAS,null);
					   CairngormEventDispatcher.getInstance().dispatchEvent(evm);
				
				break;
				
			}
			
		}
		
		public function fijarRecursoHumanoCausacionNominaCpp(idrh:int):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in RecursoHumanoMl.getInstance().listRecursoHumano){
		  
		     if(idrh!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  CuentasPorPagarMl.getInstance().indiceRecHumano=cont;
		
		}
		
		public function fijarRecursoHumano(RecSelect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in RecursoHumanoMl.getInstance().listRecursoHumano){
		  
		     if(RecSelect.idRhPersona!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  CuentasPorPagarMl.getInstance().indiceRecHumano=cont;
		
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}






