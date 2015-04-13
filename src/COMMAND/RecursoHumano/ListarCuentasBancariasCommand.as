package COMMAND.RecursoHumano
{
	import BUSINESS.RecursoHumanoDelegate;
	
	import MODEL.ContratoMl;
	import MODEL.CuentasPorPagarMl;
	import MODEL.PantallasMl;
	import MODEL.RecursoHumanoMl;
	import MODEL.UtilidadesMl;
	
	import VIEW.CuentasPagar.AgregarCuentaPorPagar;
	import VIEW.CuentasPagar.ModificarCuentasPorPagar;
	import VIEW.contratacion.CrearLiquidacion;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarCuentasBancariasCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new RecursoHumanoDelegate(this).listarCuentaBancaria();
		}
		
		public function result(data:Object):void
		{
			RecursoHumanoMl.getInstance().listCuentas = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_CREAR_LIQUIDACION:
				
				    if(RecursoHumanoMl.getInstance().listCuentas!=null && RecursoHumanoMl.getInstance().listCuentas.length>0){
				    	
				    	var crearliq:CrearLiquidacion = CrearLiquidacion(PopUpManager.createPopUp(PantallasMl.atsys,CrearLiquidacion,true));
			            PopUpManager.centerPopUp(crearliq);
			            PantallasMl.ESTADO_PANTALLA=-1;
				    	
				    }else{
				    	  
				    	   PantallasMl.ESTADO_PANTALLA = -1;
						
            	 	      Alert.show("El Recurso Humano del Contrato Seleccionado NO tiene Cuenta(s) Bancaria(s). Asignele Cuentas al Recurso Humano antes de realizar esta Operación","Mensaje de alerta",0,null,null,alerta,0);
				    	  
				         }
				
				break;
				
				///////////////////////PANTALLA CUENTAS POR PAGAR CAUSACIONE NOMINA///////
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR_CAUSACION_NOMINA:
				
				      var cuentasPagar:AgregarCuentaPorPagar = AgregarCuentaPorPagar(PopUpManager.createPopUp(PantallasMl.atsys,AgregarCuentaPorPagar,true));
                      PopUpManager.centerPopUp(cuentasPagar);
                      
                      var f:Date = new Date();
                      var au:String = UtilidadesMl.getInstance().formatearACampoFecha(f);
				
				      CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.cbxNombreRec.selectedIndex = CuentasPorPagarMl.getInstance().indiceRecHumano;
				      CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.cbxNombreRec.enabled=false;
				      CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.Persona.enabled=false;
				      CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.txtareaConcept.text="PAGO POR NOMINA";
				      CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.txtvalor.text = ContratoMl.getInstance().CausacionPpl.dgCausaciones.selectedItem.causacionNomina.totalAPagar;
				      CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.DfFechaOrigen.text = au;
				       
				        
				break;
				
				//////////////////////////////////////////////////////////////////////////
				
				 case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR:
				 
				    if(RecursoHumanoMl.getInstance().listCuentas!=null){
				    	
				    	 if(RecursoHumanoMl.getInstance().listCuentas.length>0)
				    	   {
				    	   	
						    	var agregarCuentaXpagarr:AgregarCuentaPorPagar = AgregarCuentaPorPagar(PopUpManager.createPopUp(PantallasMl.atsys,AgregarCuentaPorPagar,true));
					            PopUpManager.centerPopUp(agregarCuentaXpagarr);
						   	    PantallasMl.ESTADO_PANTALLA = -1;
				    	   
				    	   }else{
				    	   	      
				    	   	      var agregarCuentaXpagar:AgregarCuentaPorPagar = AgregarCuentaPorPagar(PopUpManager.createPopUp(PantallasMl.atsys,AgregarCuentaPorPagar,true));
					              PopUpManager.centerPopUp(agregarCuentaXpagar);
					              PantallasMl.ESTADO_PANTALLA = -1;
					              
					              if(RecursoHumanoMl.getInstance().listRecursoHumano!=null){
						              
						              if(RecursoHumanoMl.getInstance().listRecursoHumano.length>0){
						              
							              Alert.show("El Recurso Humano Seleccionado en la Lista No tiene Cuenta(s) Bancaria(s). Asignele Cuentas al Recurso Humano antes de realizar esta Operación","Mensaje de alerta",0,null,null,alerta,0);
								   	      CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.cbxNombreRec.selectedIndex=-1;
								   	      CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.cbxNombreRec.prompt ="Seleccione";
						                  
				    	   	           }
				    	   	      
				    	   	      }
				    	   	      
				    	        }
				    	   
				   	    
				   	    if(CuentasPorPagarMl.getInstance().banderaRecHumano){
				    		
				    		CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.viewstackRecPersona.selectedIndex=0;
				   	  	  	CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.Persona.enabled=false;
				   	  	  	CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.cbxNombreRec.visible = true;
				   	  	  	CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.cbxNombrePersona.visible = false;
				   	  	  	
				    		
				    	}
				    	
				    	if(CuentasPorPagarMl.getInstance().banderaPersona){
				    		
				    		CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.cbxNombreRec.visible = false;
				   	  	  	CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.cbxNombrePersona.visible = true;
				    		CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.viewstackRecPersona.selectedIndex=1;
	   	  	  	            CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.Persona.selected=true;
	   	  	  	 	        CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.rh.enabled=false;
				    		
				    	}
				    	
				    }
				 
				 break;
				 
				 case PantallasMl.getInstance().PANTALLA_MODIFICAR_CUENTAS_X_PAGAR:
				 
				       if(CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem.idCuentaBanco>0){
				       	
				       	   var cuentabanc:Object = CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem;
				       	   fijarCuentaBancaria(cuentabanc);
				       	   
				       	   
				       }else{
				       	     
				       	     CuentasPorPagarMl.getInstance().numeroCuenta =  CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem.numeroCuenta;
				       	     CuentasPorPagarMl.getInstance().indiceCuentaBanco = 0;
				       	     
				            }
				 
						     var modificarCuentaXpagar:ModificarCuentasPorPagar = ModificarCuentasPorPagar(PopUpManager.createPopUp(PantallasMl.atsys,ModificarCuentasPorPagar,true));
							 PopUpManager.centerPopUp(modificarCuentaXpagar);
						     PantallasMl.ESTADO_PANTALLA = -1;
						    
						    if(CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem.idCuentaBanco>0){
						    	
						    	CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.viewstackRecPersona.selectedIndex=0;
						    	CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.cbxNombrePersona.visible = false;
						    	CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.cbxNombreRec.visible = true;
						    	CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.rh.selected=true;
						    	
						    }else{
						    	
						    	   CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.viewstackRecPersona.selectedIndex=1;
						    	   CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.cbxNombreRec.visible = false;
						    	   CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.cbxNombrePersona.visible = true;
						    	   CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.Persona.selected=true;
						    	
						         }
						         
						    if(CuentasPorPagarMl.getInstance().banderaModRecHumano){
				    		
						    		//CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.viewstackRecPersona.selectedIndex=0;
						   	  	  	//CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.Persona.enabled=false;
						   	  	  	//CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.cbxNombreRec.visible = true;
						   	  	  	//CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.cbxNombrePersona.visible = false; 
						   	  	  	CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.viewstackRecPersona.selectedIndex=1;
						   	  	  	CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.cbxNombreRec.visible = false;
				   	  	  	        CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.rh.enabled=false;
				   	  	  	        CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.Persona.selected=true;
				    		
				    	      } 
						     
                             if(CuentasPorPagarMl.getInstance().banderaModPersona){
				    		
						    		//CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.cbxNombreRec.visible = false;
						   	  	  	//CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.cbxNombrePersona.visible = true;
						    		//CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.viewstackRecPersona.selectedIndex=1;
			   	  	  	            //CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.Persona.selected=true;
			   	  	  	 	        //CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.rh.enabled=false;
			   	  	  	 	        CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.cbxNombrePersona.visible = false;
						    		CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.viewstackRecPersona.selectedIndex=0;
				   	  	  	        CuentasPorPagarMl.getInstance().Clon_ModificarCuentasXpagar.Persona.enabled=false;
						    		CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.rh.selected=true;
						    		
						    	}
				
				 break;
				 
				 case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR_CBANCO:
				 
				    if(RecursoHumanoMl.getInstance().listCuentas.length==0){
				    	
				    	Alert.show("El Recurso Humano Seleccionado No tiene Cuentas de Banco. Asignele al Menos una Para Realizar esta Operación","",0,null,null,alerta,0);
				   	    CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.formIsValid=false;
				   	    CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.cbxNombreRec.prompt="Seleccione";
				   	    CuentasPorPagarMl.getInstance().Clon_AgregarCuentasXpagar.cbxNombreRec.selectedIndex=-1;
				   	    PantallasMl.ESTADO_PANTALLA = -1;
				    	
				    }
				 
				 break;
				
			}
			
		}
		
		public function fijarCuentaBancaria(CbancariaSelect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in RecursoHumanoMl.getInstance().listCuentas){
		  
		     if(CbancariaSelect.idCuentaBanco!=x.id && ban==false){
		       
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  CuentasPorPagarMl.getInstance().indiceCuentaBanco=cont;
		
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}