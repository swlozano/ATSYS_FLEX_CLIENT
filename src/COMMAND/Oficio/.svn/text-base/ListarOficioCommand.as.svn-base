package COMMAND.Oficio
{
	import BUSINESS.OficioDelegate;
	
	import EVENT.RecursoHumanoEvent;
	
	import MODEL.OficioMl;
	import MODEL.PantallasMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarOficioCommand implements ICommand, IResponder
	{
		
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new OficioDelegate(this).listarOficio();
		}
		
		public function result(data:Object):void
		{
			OficioMl.getInstance().listOficio=data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CONTRATO:
				
				   if(OficioMl.getInstance().listOficio!=null){
				   	
				   	   if(OficioMl.getInstance().listOficio.length>0){
				   	
					   	   var e:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_RECURSO_HUMANO,null,null);
					   	   CairngormEventDispatcher.getInstance().dispatchEvent(e);
				   	    
				   	    }else{
				   	    	
				   	           Alert.show("Para poder agregar un CONTRATO necesitas CREAR OFICIOS","Mensaje de alerta",0,null,null,alerta,0);
				   	           PantallasMl.ESTADO_PANTALLA=-1;
				   	         
				   	         }
				   	    
				   }else{
				   	    
				   	       Alert.show("Para poder agregar un CONTRATO necesitas CREAR OFICIOS","Mensaje de alerta",0,null,null,alerta,0);
				   	       PantallasMl.ESTADO_PANTALLA=-1;
				        
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