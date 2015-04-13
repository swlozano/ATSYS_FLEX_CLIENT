package COMMAND.CuentasPorPagar
{
	import BUSINESS.CuentasPorPagarDelegate;
	
	import EVENT.CuentasPorPagarEvent;
	
	import MODEL.CuentasPorPagarMl;
	import MODEL.PantallasMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarEstadosCuentasPagarCommand implements ICommand, IResponder
	{
		
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		
		public function execute(event:CairngormEvent):void
		{
			new CuentasPorPagarDelegate(this).listarEstadoCuentaXpagar();
		}
		
		public function result(data:Object):void
		{
			CuentasPorPagarMl.getInstance().listEstadoCpp = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR:
				
				    if(CuentasPorPagarMl.getInstance().listEstadoCpp!=null){
				    	
				    	var evx:CuentasPorPagarEvent = new CuentasPorPagarEvent(CuentasPorPagarEvent.LISTAR_GENERADOR_CUENTA_X_PAGAR,null);
				    	CairngormEventDispatcher.getInstance().dispatchEvent(evx);
				    	
				    }else{
				   	   
				   	       Alert.show("No existen Estados de Cuentas Por Pagar Registrados en la BD..Agregue al menos una en la BD para realizar esta operación","Mensaje de alerta",0,null,null,alerta,0);
				   	       PantallasMl.ESTADO_PANTALLA = -1;
				         
				         }
				
				break;
				
				///////////////PANTALLA CUENTA POR PAGAR CAUSACION NOMINA
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR_CAUSACION_NOMINA:
				
				   var evc:CuentasPorPagarEvent = new CuentasPorPagarEvent(CuentasPorPagarEvent.LISTAR_GENERADOR_CUENTA_X_PAGAR,null);
				   CairngormEventDispatcher.getInstance().dispatchEvent(evc);
				
				break;
				
				/////////////////////////////////////////////////////////
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_CUENTAS_X_PAGAR:
				
				      var estadoselect:Object = CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem;
				      
				      fijarEstadoCuentaxpagar(estadoselect);
				
				      var evm:CuentasPorPagarEvent = new CuentasPorPagarEvent(CuentasPorPagarEvent.LISTAR_GENERADOR_CUENTA_X_PAGAR,null);
				      CairngormEventDispatcher.getInstance().dispatchEvent(evm);
				
				break;
				
			}
			
		}
		
		public function fijarEstadoCuentaxpagar(EstadoSelect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in CuentasPorPagarMl.getInstance().listEstadoCpp){
		  
		     if(EstadoSelect.idEstadoCuenta!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  CuentasPorPagarMl.getInstance().indiceEstado=cont;
		
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}








