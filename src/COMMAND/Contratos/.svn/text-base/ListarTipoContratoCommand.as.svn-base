package COMMAND.Contratos
{
	import BUSINESS.ContratoDelegate;
	
	import EVENT.OficioEvent;
	
	import MODEL.ContratoMl;
	import MODEL.PantallasMl;
	
	import VIEW.contratacion.ParametrosGenCausaciones;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarTipoContratoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).listarTipoContrato();
		}
		
		public function result(data:Object):void
		{
			ContratoMl.getInstance().listTipoContrato = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CONTRATO:
				
				    if(ContratoMl.getInstance().listTipoContrato!=null){
				    	
				    	var e:OficioEvent = new OficioEvent(OficioEvent.LISTAR_OFICIO,null);
				    	CairngormEventDispatcher.getInstance().dispatchEvent(e);
				    	
				    }
				
				break;
			   
			   case PantallasMl.getInstance().PANTALLA_PARAMETROS_GENERAR_CAUSACION:
			   
			        if(ContratoMl.getInstance().listTipoContrato!=null){
			        	
			        	var paramentros:ParametrosGenCausaciones = ParametrosGenCausaciones(PopUpManager.createPopUp(PantallasMl.atsys,ParametrosGenCausaciones,true));
			        	PopUpManager.centerPopUp(paramentros);
			        	PantallasMl.ESTADO_PANTALLA =-1;
			        }else{
			        	  
			        	  Alert.show("No existen registrados Tipos de Contratos en la BD...Registre al Menos Uno para realizar esta operación","",0,null,null,falla,0);
			        	  
			             }
			   
			   break;
			   	
			}
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}