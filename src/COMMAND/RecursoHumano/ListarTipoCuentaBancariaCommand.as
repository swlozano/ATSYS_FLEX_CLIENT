package COMMAND.RecursoHumano
{
	import BUSINESS.RecursoHumanoDelegate;
	
	import EVENT.CuentasPorPagarEvent;
	
	import MODEL.CuentasPorPagarMl;
	import MODEL.PantallasMl;
	import MODEL.RecursoHumanoMl;
	
	import VIEW.contratacion.AgregarCuentaBancaria;
	import VIEW.contratacion.modificarCuentaBancaria;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarTipoCuentaBancariaCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new RecursoHumanoDelegate(this).listartipocuentaBancaria();
		}
		
		public function result(data:Object):void
		{
			RecursoHumanoMl.getInstance().listtipoCuenta = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTA_BANCARIA:
				
				   if(RecursoHumanoMl.getInstance().listtipoCuenta!=null && RecursoHumanoMl.getInstance().listtipoCuenta.length>0){
				   	
				   	  var agregarcuenta:AgregarCuentaBancaria = AgregarCuentaBancaria(PopUpManager.createPopUp(PantallasMl.atsys,AgregarCuentaBancaria,true));
		      		   PopUpManager.centerPopUp(agregarcuenta);
		      		   PantallasMl.ESTADO_PANTALLA = -1;
				   	
				   }else{
				   	   
				   	       Alert.show("No existen Tipos de Cuentas Registradas..Agregue al menos una en la BD para realizar esta operación","Mensaje de alerta",0,null,null,alerta,0);
				   	       PantallasMl.ESTADO_PANTALLA = -1;
				         } 
				  
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_CUENTA_BANCARIA:
				
				   if(RecursoHumanoMl.getInstance().listtipoCuenta!=null && RecursoHumanoMl.getInstance().listtipoCuenta.length>0){
				   	 
				   	  if(RecursoHumanoMl.getInstance().RecursoHumanoPpl!=null){
				   	       
				   	       var cuentaseleccionada:Object=RecursoHumanoMl.getInstance().RecursoHumanoPpl.dgcuentas.selectedItem;
				   	       
				   	       fijartipocuenta(cuentaseleccionada);
				   	       
					   	   var modificar:modificarCuentaBancaria = modificarCuentaBancaria(PopUpManager.createPopUp(PantallasMl.atsys,modificarCuentaBancaria,true));
			      		   PopUpManager.centerPopUp(modificar);
			      		   PantallasMl.ESTADO_PANTALLA = -1;
				   	  
				   	   }
				   	   
				   }else{
				   	   
				   	       Alert.show("No existen Tipos de Cuentas Registradas..Agregue al menos una en la BD para realizar esta operación","Mensaje de alerta",0,null,null,alerta,0);
				   	       PantallasMl.ESTADO_PANTALLA = -1;
				         } 
				  
				break;
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR:
				   
				    if(RecursoHumanoMl.getInstance().listtipoCuenta!=null){
				    	
				    	var evx:CuentasPorPagarEvent = new CuentasPorPagarEvent(CuentasPorPagarEvent.LISTAR_ESTADO_CUENTA_X_PAGAR,null);
				    	CairngormEventDispatcher.getInstance().dispatchEvent(evx);
				    	
				    }else{
				   	   
				   	       Alert.show("No existen Tipos de Cuentas Registradas..Agregue al menos una en la BD para realizar esta operación","Mensaje de alerta",0,null,null,alerta,0);
				   	       PantallasMl.ESTADO_PANTALLA = -1;
				         
				         }
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_CUENTAS_X_PAGAR:
				   
				     if(CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem.idCuentaBanco==0){
				  
				        var tcuentaseleccionado:Object = CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem;
				        fijarTipoCuentaPersona(tcuentaseleccionado);
				        
				        
				     }else{
				     	    
				     	    CuentasPorPagarMl.getInstance().indiceTipoCuenta = 0;
				     	    
				          }
				   
				      var evm:CuentasPorPagarEvent = new CuentasPorPagarEvent(CuentasPorPagarEvent.LISTAR_ESTADO_CUENTA_X_PAGAR,null);
				      CairngormEventDispatcher.getInstance().dispatchEvent(evm);
				 
				break;
				
			}
			
		}
		
		public function fijarTipoCuentaPersona(TcuentaSelect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in RecursoHumanoMl.getInstance().listtipoCuenta){
		  
		     if(TcuentaSelect.idTipoCuenta!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  CuentasPorPagarMl.getInstance().indiceTipoCuenta=cont;
		
		}
		
		public function fijartipocuenta(cuenta:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in RecursoHumanoMl.getInstance().listtipoCuenta){
		  
		     if(cuenta.idTipoCuentaBancaria!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		
		  //RecursoHumanoMl.getInstance().bancoindex = cont;
		  RecursoHumanoMl.getInstance().tipocuentaindex = cont;
		  
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}





















