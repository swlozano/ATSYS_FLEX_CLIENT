package COMMAND.CuentasPorPagar
{
	import BUSINESS.CuentasPorPagarDelegate;
	
	import EVENT.CuentasPorPagarEvent;
	import EVENT.RecursoHumanoEvent;
	
	import MODEL.ContratoMl;
	import MODEL.CuentasPorPagarMl;
	import MODEL.PantallasMl;
	import MODEL.RecursoHumanoMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarGeneradorCuentasPagarCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
        
		public function execute(event:CairngormEvent):void
		{
			new CuentasPorPagarDelegate(this).listarGeneradorCXpagar();
		}
		
		public function result(data:Object):void
		{
			CuentasPorPagarMl.getInstance().listGeneradorCpp = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				
				///////////////////PANTALLA CUENTA POR PAGAR CAUSACION NOMINA////////
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR_CAUSACION_NOMINA:
				
				   RecursoHumanoMl.getInstance().idRechumano = ContratoMl.getInstance().CausacionPpl.dgCausaciones.selectedItem.idRecursoHumano; 
				
				   var evcn:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_CUENTA_BANCARIA,null,null);
				   CairngormEventDispatcher.getInstance().dispatchEvent(evcn);  
				
				break;
				
				////////////////////////////////////////////////////////////////////
				
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR:
				
				   if(CuentasPorPagarMl.getInstance().listGeneradorCpp!=null){
				   	
				   	 
				   	  
				   	  for each(var x:* in RecursoHumanoMl.getInstance().listRecursoHumano){
				   	  	
				   	     	 RecursoHumanoMl.getInstance().idRechumano = x.id;
				   	     	 break;
				   	  	
				   	  }
				   	  
				   	  
				   	  var evx:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_CUENTA_BANCARIA,null,null);
				   	  CairngormEventDispatcher.getInstance().dispatchEvent(evx);
				   	  
				   	  
				   }else{
				   	   
				   	       Alert.show("No existen Generaciones de Cuentas Por Pagar Registrados en la BD..Agregue al menos una en la BD para realizar esta operación","Mensaje de alerta",0,null,null,alerta,0);
				   	       PantallasMl.ESTADO_PANTALLA = -1;
				         
				         }
  
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_CUENTAS_X_PAGAR:
				 
				      if(CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem.idCuentaBanco>0){
				      
				         RecursoHumanoMl.getInstance().idRechumano = CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem.idRhPersona; 
				      
				      }else{
				      	     
				      	     
				      	     
				             for each(var i:* in RecursoHumanoMl.getInstance().listRecursoHumano){
				   	  	
				   	     	           RecursoHumanoMl.getInstance().idRechumano = i.id;
				   	     	           break;
				   	  	
				   	         }
				           
				          }
				        
				        
				 
				   	    var evm:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_CUENTA_BANCARIA,null,null);
				   	    CairngormEventDispatcher.getInstance().dispatchEvent(evm);
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_CUENTAS_POR_PAGAR_PPL:
				 	
				    	CuentasPorPagarMl.getInstance().idRecHumanoToListar = -1;
				    	CuentasPorPagarMl.getInstance().idPersonaToListar = -1; 
				    	CuentasPorPagarMl.getInstance().idEstadoToListar = -1;
				    	CuentasPorPagarMl.getInstance().idTipoCuentaToListar = -1;
				    	
				    	var evlc:CuentasPorPagarEvent = new CuentasPorPagarEvent(CuentasPorPagarEvent.LISTAR_CUENTA_X_PAGAR,null);
				    	CairngormEventDispatcher.getInstance().dispatchEvent(evlc);
				
				break;
				
			}
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}

}




